//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "FormMain.h"
#include <stdio.h>
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "Chart"
#pragma link "TeEngine"
#pragma link "TeeProcs"
#pragma link "Series"
#pragma resource "*.dfm"
TForm1 *Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button1Click(TObject *Sender)
{
	FILE* in;
	if((in = fopen("data.txt", "r")) == NULL) return;


	char s[20]; // 행이 1줄씩 임시로 저장될 버퍼

	Chart1->Series[0]->Clear();
	int iX = 0;
	while (fgets(s, 20, in) != NULL)
	{
		Chart1->Series[0]->AddXY(iX++, String(s).Trim().ToIntDef(0));
	}


	fclose(in);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button2Click(TObject *Sender)
{
	FILE* in;
	if((in = fopen("data2.txt", "r")) == NULL) return;


	char s[20]; // 행이 1줄씩 임시로 저장될 버퍼

	Chart1->Series[1]->Clear();
	int iX = 0;
	while (fgets(s, 20, in) != NULL)
	{
		Chart1->Series[1]->AddXY(iX++, String(s).Trim().ToIntDef(0));
	}


	fclose(in);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::CheckBox1Click(TObject *Sender)
{
	Series1->Pointer->Visible = CheckBox1->Checked;
	Series2->Pointer->Visible = CheckBox1->Checked;
	Series3->Pointer->Visible = CheckBox1->Checked;
}


//-------------------------------------------------------------------------------
//① 설       명  :
//② 인       수  :
//③ 리       턴  :
//-------------------------------------------------------------------------------
double Nstio_DataConverter_ssCompensation( signed short *pssResult, signed short ssValue,
										  signed short maxValue,   signed short minValue,
										  signed short maxRefer,   signed short minRefer )
{
	double dResult = 0.0f;

	dResult  = (double)( (signed long)maxValue - minValue ) * (double)( (signed long)ssValue - minRefer )
			 / (double)( (signed long)maxRefer - minRefer ) + (double)minValue;

	*pssResult = (signed short)dResult;

	return dResult;
}


#include <math.h>
double frand() 
{     
    return 2*((rand()/(double)RAND_MAX) - 0.5); 
}

//-------------------------------------------------------------------------------
//① 설       명  :
//② 인       수  :
//③ 리       턴  :
//-------------------------------------------------------------------------------
void __fastcall TForm1::Button3Click(TObject *Sender)
{
	//initial values for the kalman filter
	float x_est_last = 0;    
	float P_last = 0;     

	//the noise in the system     

	float Q = Edit7->Text.ToDouble();//0.022;    
	float R = Edit8->Text.ToDouble();//0.617;         
	float K;     
	float P;     
	float P_temp;     
	float x_temp_est;     
	float x_est;     

	float z_measured; 
	//the 'noisy' value we measured   
	float z_real = 0.5; 
	//the ideal value we wish to measure         
	srand(0);          
	//initialize with a measurement     
	x_est_last = z_real + frand()*0.09;         
	float sum_error_kalman = 0;    
	float sum_error_measure = 0;

	Chart1->Series[0]->Clear();
	Chart1->Series[1]->Clear();
	Chart1->Series[2]->Clear();
	Chart1->Series[3]->Clear();

	Chart1->Series[0]->LegendTitle = "Measured";
	Chart1->Series[1]->LegendTitle = "x_est";
	Chart1->Series[2]->LegendTitle = "sum_error_kalman";
	Chart1->Series[3]->LegendTitle = "sum_error_measure";

	for (int i=0;i<30;i++)
	{
		//do a prediction
		x_temp_est = x_est_last;
		P_temp = P_last + Q;
		//calculate the Kalman gain
		K = P_temp * (1.0/(P_temp + R));
		//measure
		z_measured = z_real + frand()*0.09;

		Chart1->Series[0]->AddXY(i, z_measured);
		
		//the real measurement plus noise
		//correct
		x_est = x_temp_est + K * (z_measured - x_temp_est);

        Chart1->Series[1]->AddXY(i, x_est);

		P = (1- K) * P_temp;
		//we have our new system
		//printf("Ideal position: %6.3f \n",z_real);
		//printf("Mesaured position: %6.3f [diff:%.3f]\n",z_measured,fabs(z_real-z_measured));
		//printf("Kalman position: %6.3f [diff:%.3f]\n",x_est,fabs(z_real - x_est));
		sum_error_kalman += fabs(z_real - x_est);
		sum_error_measure += fabs(z_real-z_measured);

		Chart1->Series[2]->AddXY(i, sum_error_kalman);
		Chart1->Series[3]->AddXY(i, sum_error_measure);

		//update our last's
		P_last = P;
		x_est_last = x_est;
	}
}


// 버블 정렬 함수
int TForm1::Align(int N[], int nSize)
{
 int hold;
 int k;
 k = nSize/2;   // 마스크의 중앙 위치 계산

 for (int loop=1; loop<nSize; loop++) {
  for (int i=0; i<nSize-1; i++) {
   if (N[i] > N[i+1]) {
    hold = N[i];
    N[i] = N[i+1];
    N[i+1] = hold;
   }
  }
 }

 return N[k];   // 중앙값을 반환
}

//---------------------------------------------------------------------------
// 미디언 필터 함수
void TForm1::Median(int buffer[])
{
	int row, col;
	const int mskSz = Edit2->Text.ToIntDef(10);
	int *Num = new int[mskSz];
	int NumCenter = mskSz/2;
	//int temp[256];

	for(int i=0; i<256; i++)
	{
		for (int n=0; n<mskSz; n++)
		{
			Num[n] = buffer[i+n];
		}
		median[i] = Align(Num, mskSz);
	}

	Chart1->Series[1]->Clear();
	for(int i=mskSz; i<256; i++)
	{
		Chart1->Series[1]->AddXY(i, median[i-mskSz]);
	}

	delete Num;
}


void __fastcall TForm1::Button4Click(TObject *Sender)
{
	FILE* in;
	if((in = fopen(Edit1->Text.c_str(), "r")) == NULL) return;


	char s[20]; // 행이 1줄씩 임시로 저장될 버퍼

	Chart1->Series[0]->Clear();
	int iX = 0;
	while (fgets(s, 20, in) != NULL)
	{
		raw[iX] = String(s).Trim().ToIntDef(0);
		Chart1->Series[0]->AddXY(iX, raw[iX]);
		iX++;
	}


	fclose(in);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button5Click(TObject *Sender)
{
	Median(raw);
}
//---------------------------------------------------------------------------


void __fastcall TForm1::Button6Click(TObject *Sender)
{
	const int mskSz = Edit2->Text.ToIntDef(10);
	const int avgSz = Edit3->Text.ToIntDef(10);

	for(int i=0; i<256-mskSz; i++)
	{
		int sum = 0;
		for(int j=0; j<avgSz; j++)
		{
			sum += median[i+j];
		}
		average[i] = sum/avgSz;
	}

	Chart1->Series[2]->Clear();
	for(int i=mskSz+avgSz; i<256; i++)
	{
		Chart1->Series[2]->AddXY(i, average[i-(mskSz+avgSz)]);
	}
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button7Click(TObject *Sender)
{
	const int avgSz = Edit4->Text.ToIntDef(10);

	//일반 평균필터
	if(ComboBox1->ItemIndex == 0)
	{
		for(int i=0; i<256; i++)
		{
			int sum = 0;
			for(int j=0; j<avgSz; j++)
			{
				sum += raw[i+j];
			}
			average[i] = sum/avgSz;
		}

		Chart1->Series[3]->Clear();
		for(int i=avgSz; i<256; i++)
		{
			Chart1->Series[3]->AddXY(i, average[i-(avgSz)]);
		}
	}
	else
	{
		//재귀 평균필터

		average[0] = raw[0];
		for(int i=1; i<256; i++)
		{
			average[i] = ((avgSz-1.0)/(float)avgSz)*average[i-1] + (1.0/avgSz)*raw[i];;
		}

		Chart1->Series[5]->Clear();
		for(int i=avgSz; i<256; i++)
		{
			Chart1->Series[5]->AddXY(i, average[i-(avgSz)]);
		}
	}


}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button8Click(TObject *Sender)
{
	int row, col;
	const int avgSz = Edit4->Text.ToIntDef(10);
	const int mskSz = Edit5->Text.ToIntDef(10);
	int *Num = new int[mskSz];
	int NumCenter = mskSz/2;
	//int temp[256];

	for(int i=avgSz; i<256; i++)
	{
		for (int n=0; n<mskSz; n++)
		{
			Num[n] = average[i+n-avgSz];
		}
		median[i-avgSz] = Align(Num, mskSz);
	}

	Chart1->Series[4]->Clear();
	for(int i=mskSz+avgSz; i<256; i++)
	{
		Chart1->Series[4]->AddXY(i, median[i-(mskSz+avgSz)]);
	}

	delete Num;
}


//-------------------------------------------------------------------------------
//① 설       명  : LPF
//② 인       수  :
//③ 리       턴  :
//-------------------------------------------------------------------------------
void __fastcall TForm1::Button9Click(TObject *Sender)
{
	float alpha = Edit6->Text.ToDouble();
	float alpha2 = 1-alpha;
	average[0] = raw[0];
	for(int i=1; i<256; i++)
	{   		
		average[i] = alpha*average[i-1] + alpha2*raw[i];
	}

	Chart1->Series[3]->Clear();
	for(int i=1; i<256; i++)
	{
		Chart1->Series[3]->AddXY(i, average[i]);
	}
}
//---------------------------------------------------------------------------


void __fastcall TForm1::Button10Click(TObject *Sender)
{
	double dminY = Chart1->Series[0]->MinYValue();
	double dmaxY = Chart1->Series[0]->MaxYValue();
	double dDiff = (dmaxY - dminY) / 10.0;

	int iHistogram[10] = {0,};
	int hist;
	for(int i=0; i<256; i++)
	{
        hist = (Chart1->Series[0]->YValue[i] - dminY) / dDiff;
		iHistogram[hist]++;
	}

	for(int i=0; i<10; i++)
	{
        Chart1->Series[6]->AddXY(dminY + dDiff*i, iHistogram[i]);//, FloatToStrF( + , ffFixed, 10, 1));;
    }
}
//---------------------------------------------------------------------------

