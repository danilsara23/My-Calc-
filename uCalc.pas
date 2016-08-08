unit uCalc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfrmCalculator = class(TForm)
    pnlMenu: TPanel;
    lblView: TLabel;
    lblEdit: TLabel;
    lblHelp: TLabel;
    pnlCalc: TPanel;
    bMC: TButton;
    bMR: TButton;
    bMS: TButton;
    bMMas: TButton;
    bMMenos: TButton;
    bDeshacer: TButton;
    bClearE: TButton;
    bClear: TButton;
    bMasMenos: TButton;
    bRaiz: TButton;
    bDiv: TButton;
    bPorciento: TButton;
    b9: TButton;
    b8: TButton;
    b7: TButton;
    b6: TButton;
    b5: TButton;
    bUnoX: TButton;
    bMultip: TButton;
    b1: TButton;
    b2: TButton;
    b3: TButton;
    bMenos: TButton;
    eResultado: TEdit;
    eCalculo: TEdit;
    b4: TButton;
    b0: TButton;
    bPunto: TButton;
    bMas: TButton;
    bIgual: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure b1Click(Sender: TObject);
    procedure b2Click(Sender: TObject);
    procedure b3Click(Sender: TObject);
    procedure b4Click(Sender: TObject);
    procedure b5Click(Sender: TObject);
    procedure b6Click(Sender: TObject);
    procedure b7Click(Sender: TObject);
    procedure b8Click(Sender: TObject);
    procedure b9Click(Sender: TObject);
    procedure b0Click(Sender: TObject);
    procedure bClearClick(Sender: TObject);
    procedure bPuntoClick(Sender: TObject);
    procedure bMasClick(Sender: TObject);
    procedure bIgualClick(Sender: TObject);
    procedure bClearEClick(Sender: TObject);
    procedure bMenosClick(Sender: TObject);
    procedure bDeshacerClick(Sender: TObject);
    procedure bRaizClick(Sender: TObject);
    procedure bMultipClick(Sender: TObject);
    procedure bDivClick(Sender: TObject);
    procedure bPorcientoClick(Sender: TObject);
    procedure bUnoXClick(Sender: TObject);
    procedure bMMasClick(Sender: TObject);
    procedure bMMenosClick(Sender: TObject);
    procedure bMRClick(Sender: TObject);
    procedure bMCClick(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCalculator: TfrmCalculator;
  sumando1 : real;
  operador : string;
  cadena: String;
  raizcuadrada: Extended;
  MR: real;


implementation

{$R *.dfm}

procedure TfrmCalculator.b0Click(Sender: TObject);
begin
   //Desplegar el 0
   eCalculo.Text:= eCalculo.Text+FloatToStr(0);

end;

procedure TfrmCalculator.b1Click(Sender: TObject);
begin
   //Desplegar número 1
   eCalculo.Text:= eCalculo.Text+FloatToStr(1);
end;

procedure TfrmCalculator.b2Click(Sender: TObject);
begin
   //Desplegar número 2
   eCalculo.Text:= eCalculo.Text+FloatToStr(2);

end;

procedure TfrmCalculator.b3Click(Sender: TObject);
begin
   //Desplegar número 3
   eCalculo.Text:= eCalculo.Text+FloatToStr(3);
end;

procedure TfrmCalculator.b4Click(Sender: TObject);
begin
   //Desplegar número 4
    eCalculo.Text:= eCalculo.Text+FloatToStr(4);

end;

procedure TfrmCalculator.b5Click(Sender: TObject);
begin
   //Desplegar número 5
    eCalculo.Text:= eCalculo.Text+FloatToStr(5);

end;

procedure TfrmCalculator.b6Click(Sender: TObject);
begin
   //Desplegar número 6
    eCalculo.Text:= eCalculo.Text+FloatToStr(6);

end;

procedure TfrmCalculator.b7Click(Sender: TObject);
begin
   //Desplegar número 7
   eCalculo.Text:= eCalculo.Text+FloatToStr(7);


end;

procedure TfrmCalculator.b8Click(Sender: TObject);
begin
   //Desplegar número 8
   eCalculo.Text:= eCalculo.Text+FloatToStr(8);

end;

procedure TfrmCalculator.b9Click(Sender: TObject);
begin
   //Desplegar número 9
   eCalculo.Text:= eCalculo.Text+FloatToStr(9);

end;

procedure TfrmCalculator.bClearClick(Sender: TObject);
begin
   //Limipiar valores desplegados
   eCalculo.Clear;
   eResultado.Clear;
   sumando1:= 0;
end;

procedure TfrmCalculator.bClearEClick(Sender: TObject);
begin
   //Borrar ultimo valor despues del operador logico
   eCalculo.Text:= FloatToStr(sumando1);
end;

procedure TfrmCalculator.bIgualClick(Sender: TObject);
begin
   //Programar condicion operacional para calcular el resultado y desplegarlo

   if operador='+' then
      begin
          eResultado.Text:= FloatToStr(sumando1+StrToFloat(eCalculo.Text));
      end
   else
     begin
        if operador='-' then
           begin
           eResultado.Text:= FloatToStr(sumando1-StrToFloat(eCalculo.Text));
           end
        else
        begin
          if operador='*' then
             begin
             eResultado.Text:= FloatToStr(sumando1*StrToFloat(eCalculo.Text));
             end
             else
               begin
               if operador='/' then
               begin
               eResultado.Text:= FloatToStr(sumando1/StrToFloat(eCalculo.Text));
               end;

             end;

        end;

 end;

end;

procedure TfrmCalculator.bMasClick(Sender: TObject);
begin
   //Realizar operación de sumatoria
   sumando1:=  StrToFloat(eCalculo.Text);
   operador:= '+';
   eCalculo.Text:= '';

end;

procedure TfrmCalculator.bMCClick(Sender: TObject);
begin
   // Borrar datos de memoria en las tecla MR
   MR:= 0;
end;

procedure TfrmCalculator.bMenosClick(Sender: TObject);
begin
   //Realizar operación de resta
    sumando1:=  StrToFloat(eCalculo.Text);
    operador:= '-';
    eCalculo.Text:= '';
end;

procedure TfrmCalculator.bMMasClick(Sender: TObject);
begin
   //Funcionalidad tecla M+ sumar valor a un número guardado en memoria
   //previamente
   MR:=MR+StrToFloat(eCalculo.Text);
end;

procedure TfrmCalculator.bMMenosClick(Sender: TObject);
begin
   //Funcionalidad tecla M- Restar valor a un número guardado en memoria
   //previamente
   MR:=MR-StrToFloat(eCalculo.Text);
end;

procedure TfrmCalculator.bMRClick(Sender: TObject);
begin
   //Funcionalidad tecla MR= devuelve numero lamacenado en memoria
   eCalculo.Text:= FloatToStr(MR);
end;

procedure TfrmCalculator.bMultipClick(Sender: TObject);
begin
   //Realizar operación de Multiplicación
   sumando1:=  StrToFloat(eCalculo.Text);
   operador:= '*';
   eCalculo.Text:= '';
end;

procedure TfrmCalculator.bPorcientoClick(Sender: TObject);
begin
   //Calculo del pocentaje
   eResultado.Text:= FloatToStr(sumando1*(StrToFloat(eCalculo.Text)/100));
end;

procedure TfrmCalculator.bPuntoClick(Sender: TObject);
begin
   //Desplegar el punto en edit para realizar el cálculo
   self.eCalculo.Text:= self.eCalculo.Text + '.';
end;

procedure TfrmCalculator.bRaizClick(Sender: TObject);
begin
   //Calcular la raiz cuadrada invocando al funcion Sqrt
  raizcuadrada:= sqrt(StrToFloat(eCalculo.Text));
  eResultado.Text:=FloatToStr(raizcuadrada) ;
end;

procedure TfrmCalculator.bUnoXClick(Sender: TObject);
begin
  //Calculo de 1 /  el #
   eResultado.Text:= FloatToStr(1/StrToFloat(eCalculo.Text));
end;

procedure TfrmCalculator.bDeshacerClick(Sender: TObject);
begin
   // Para extraer el ultimo caracter e irlo eliminando
   cadena:= eCalculo.Text;
   eCalculo.Text:= cadena.Substring(0,cadena.Length-1);
end;

procedure TfrmCalculator.bDivClick(Sender: TObject);
begin
   //Realizar operación de Multiplicación
   sumando1:=  StrToFloat(eCalculo.Text);
   operador:= '/';
   eCalculo.Text:= '';
end;

procedure TfrmCalculator.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Application.Terminate ;
end;

end.
