unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Menus;

type
  TForm1 = class(TForm)
    ComboBox1: TComboBox;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Label2: TLabel;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    ComboBox2: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  opr:string;
  kl,sl,ks,nomer,prav:byte;
  o1,o2,o3,otv,r_o:longint;

implementation

{$R *.dfm}

//Присваивание определённых значений
//определённым переменным при создании формы
procedure TForm1.FormCreate(Sender: TObject);
begin
nomer:=1;
ks:=0;
prav:=0;
end;

//Генерация случайных уравнений
//Проверка правильности ответов
//Вывод статистики
//Повтор программы
procedure TForm1.Button1Click(Sender: TObject);
begin
  case nomer of

  //Первое нажатие на кнопку
  //Ввод исходных данных
  //И генерация уравнения
  1:
  begin
  If (ComboBox1.Items[ComboBox1.ItemIndex]<>'+')
  and (ComboBox1.Items[ComboBox1.ItemIndex]<>'-')
  and (ComboBox1.Items[ComboBox1.ItemIndex]<>'*')
  and (ComboBox1.Items[ComboBox1.ItemIndex]<>'/')

  Then

  begin
    ShowMessage('Ошибка при вводе данных');
    ComboBox1.SetFocus;
    exit;
  end;

  opr:=ComboBox1.Items[ComboBox1.ItemIndex];

  try
    kl:=StrToInt(Edit1.Text);
  except
    ShowMessage('Ошибка при вводе данных');
    Edit1.SetFocus;
    exit;
  end;

  If kl<1
  Then
    begin
      ShowMessage('Количество должно быть больше, либо равно единице');
      Edit1.SetFocus;
      exit;
    end;

  If (ComboBox2.Items[ComboBox2.ItemIndex]<>'1')
  and (ComboBox2.Items[ComboBox2.ItemIndex]<>'2')
  and (ComboBox2.Items[ComboBox2.ItemIndex]<>'3')
  and (ComboBox2.Items[ComboBox2.ItemIndex]<>'4')
  and (ComboBox2.Items[ComboBox2.ItemIndex]<>'5')
  Then
    Begin
      ShowMessage('Ошибка при вводе данных');
      ComboBox2.SetFocus;
      exit;
    end;

  Case StrToInt(ComboBox2.Items[ComboBox2.ItemIndex]) of
  1:r_o:=10;
  2:r_o:=100;
  3:r_o:=1000;
  4:r_o:=10000;
  5:r_o:=100000;
  end;

  ComboBox1.Visible:=False;
  ComboBox1.Enabled:=False;
  ComboBox2.Visible:=False;
  ComboBox2.Enabled:=False;
  Label2.Visible:=True;
  Label1.Caption:='Введите пропущенное число';
  Nomer:=2;
  Edit1.Text:='';

  Randomize;

  sl:=Random(3)+1;

  Randomize;
  o1:=Random(r_o)-(r_o div 2);

  Randomize;
  o2:=Random(r_o)-(r_o div 2);

  If opr='+'
  Then
    begin
      o3:=o1+o2;

      case sl of
      1:
        begin
          Label2.Caption:='? + '+IntToStr(o2)+' = '+ IntToStr(o3);
        end;

      2:
        begin
          Label2.Caption:=IntToStr(o1)+ ' + ? = '+ IntToStr(o3);
        end;

      3:
        begin
          Label2.Caption:=IntToStr(o1)+ ' + ' + IntToStr(o2)+ ' = ?';
        end;
        end;
    end;


  If opr='-'
  Then
    begin
      o3:=o1-o2;

      case sl of
      1:
        begin
          Label2.Caption:='? - '+IntToStr(o2)+' = '+ IntToStr(o3);
        end;

      2:
        begin
          Label2.Caption:=IntToStr(o1)+ ' - ? = '+ IntToStr(o3);
        end;

      3:
        begin
          Label2.Caption:=IntToStr(o1)+ ' - ' + IntToStr(o2)+ ' = ?';
        end;
        end;
    end;

  If opr='*'
  Then
    begin
      o3:=o1*o2;

      case sl of
      1:
        begin
          Label2.Caption:='? * '+IntToStr(o2)+' = '+ IntToStr(o3);
        end;

      2:
        begin
          Label2.Caption:=IntToStr(o1)+ ' * ? = '+ IntToStr(o3);
        end;

      3:
        begin
          Label2.Caption:=IntToStr(o1)+ ' * ' + IntToStr(o2)+ ' = ?';
        end;
        end;
    end;


  If opr='/'
  Then
    begin
      If o2>=0

      Then
      begin

        If o1>0
        Then
        If o1<o2
        Then
        o2:=o1-1;

        If o1<0
        Then
        If (o1*(-1))<o2
        Then
        o2:=(o1*(-1))-1;

        While (o1 mod o2<>0) do
        begin
          o2:=o2-1;
        end;
      end

      else
      begin

        If o1<0
        Then
        If o1>o2
        Then
        o2:=o1+1;

        If o1>0
        Then
        If (o1*(-1))>o2
        Then
        o2:=(o1*(-1))+1;

        While (o1 mod o2<>0) do
        begin
          o2:=o2+1;
        end;
      end;
      o3:=o1 div o2;

      case sl of
      1:
        begin
          Label2.Caption:='? / '+IntToStr(o2)+' = '+ IntToStr(o3);
        end;

      2:
        begin
          Label2.Caption:=IntToStr(o1)+ ' / ? = '+ IntToStr(o3);
        end;

      3:
        begin
          Label2.Caption:=IntToStr(o1)+ ' / ' + IntToStr(o2)+ ' = ?';
        end;
        end;
    end;

  end;



//Второй этап выполнения
//Проверка правильности ответов
//И генерация новых уравнений
2:
  begin


    try
    otv:=StrToInt(Edit1.Text);
    except
      ShowMessage('Ответ указан в неверной форме');
      Edit1.SetFocus;
      exit;
    end;

    ks:=ks+1;

    case sl of
    1:
      If otv=o1
      Then
      prav:=prav+1;

    2:
      If otv=o2
      Then
      prav:=prav+1;

    3:
      If otv=o3
      Then
      prav:=prav+1;
    end;

    If ks<kl
    Then
begin
  Randomize;

  sl:=Random(3)+1;

  Randomize;
  o1:=Random(r_o)-(r_o div 2);

  Randomize;
  o2:=Random(r_o)-(r_o div 2);

  If opr='+'
  Then
    begin
      o3:=o1+o2;

      case sl of
      1:
        begin
          Label2.Caption:='? + '+IntToStr(o2)+' = '+ IntToStr(o3);
        end;

      2:
        begin
          Label2.Caption:=IntToStr(o1)+ ' + ? = '+ IntToStr(o3);
        end;

      3:
        begin
          Label2.Caption:=IntToStr(o1)+ ' + ' + IntToStr(o2)+ ' = ?';
        end;
        end;
    end;


  If opr='-'
  Then
    begin
      o3:=o1-o2;

      case sl of
      1:
        begin
          Label2.Caption:='? - '+IntToStr(o2)+' = '+ IntToStr(o3);
        end;

      2:
        begin
          Label2.Caption:=IntToStr(o1)+ ' - ? = '+ IntToStr(o3);
        end;

      3:
        begin
          Label2.Caption:=IntToStr(o1)+ ' - ' + IntToStr(o2)+ ' = ?';
        end;
        end;
    end;

  If opr='*'
  Then
    begin
      o3:=o1*o2;

      case sl of
      1:
        begin
          Label2.Caption:='? * '+IntToStr(o2)+' = '+ IntToStr(o3);
        end;

      2:
        begin
          Label2.Caption:=IntToStr(o1)+ ' * ? = '+ IntToStr(o3);
        end;

      3:
        begin
          Label2.Caption:=IntToStr(o1)+ ' * ' + IntToStr(o2)+ ' = ?';
        end;
        end;
    end;


  If opr='/'
  Then
    begin
      If o2>=0

      Then
      begin

        If o1>0
        Then
        If o1<o2
        Then
        o2:=o1-1;

        If o1<0
        Then
        If (o1*(-1))<o2
        Then
        o2:=(o1*(-1))-1;

        While (o1 mod o2<>0) do
        begin
          o2:=o2-1;
        end;
      end

      else
      begin

        If o1<0
        Then
        If o1>o2
        Then
        o2:=o1+1;

        If o1>0
        Then
        If (o1*(-1))>o2
        Then
        o2:=(o1*(-1))+1;

        While (o1 mod o2<>0) do
        begin
          o2:=o2+1;
        end;
      end;
      o3:=o1 div o2;

      case sl of
      1:
        begin
          Label2.Caption:='? / '+IntToStr(o2)+' = '+ IntToStr(o3);
        end;

      2:
        begin
          Label2.Caption:=IntToStr(o1)+ ' / ? = '+ IntToStr(o3);
        end;

      3:
        begin
          Label2.Caption:=IntToStr(o1)+ ' / ' + IntToStr(o2)+ ' = ?';
        end;
        end;
    end;
end;

//Все уравнения сгенерированы
//Все ответы приняты
//Вывод статистики на экран
   If ks=kl
   Then
     begin
       nomer:=3;
       ShowMessage('Всего - '+IntToStr(kl)+#10+#13+'Правильных - '+IntToStr(prav));
       Button1.Caption:='Повторить';
       N2.Caption:='Повторить';
     end;


   Edit1.Text:='';

end;

//Завершающий этап
//Повтор программы с момента
//Ввода исходных данных
3:
  begin
    ComboBox1.Enabled:=True;
    ComboBox1.Visible:=True;
    ComboBox2.Enabled:=True;
    ComboBox2.Visible:=True;
    Label2.Visible:=False;
    Label1.Caption:='Количество примеров:';
    Button1.Caption:='Далее';
    N2.Caption:='Далее';
    nomer:=1;
    Edit1.Text:='';
    ComboBox1.ItemIndex:=-1;
    ComboBox2.ItemIndex:=-1;
    ComboBox1.Text:='Операция';
    ComboBox2.Text:='Разрядность операндов';
    

    ks:=0;
    kl:=0;
    nomer:=1;
    prav:=0;
    o1:=0;
    o2:=0;
    o3:=0;
    otv:=0;
  end;

  end;

end;

//Вывод информации об авторе
//На экран
procedure TForm1.N7Click(Sender: TObject);
begin
Application.MessageBox('Программу создал'+#13+#13+'   Гамов Максим','Об авторе',MB_OK);
end;

//Вывод информации о программе
//На экран
procedure TForm1.N8Click(Sender: TObject);
begin
Application.MessageBox('Курсовой проект по ТРПП','О программе',MB_OK);
end;

//Повтор программы
procedure TForm1.N5Click(Sender: TObject);
begin
    ComboBox1.Enabled:=True;
    ComboBox1.Visible:=True;
    ComboBox2.Enabled:=True;
    ComboBox2.Visible:=True;
    Label2.Visible:=False;
    Label1.Caption:='Количество примеров:';
    Button1.Caption:='Далее';
    nomer:=1;
    Edit1.Text:='';
    ComboBox1.ItemIndex:=-1;
    ComboBox2.ItemIndex:=-1;
    ComboBox1.Text:='Операция';
    ComboBox2.Text:='Разрядность операндов';
    

    ks:=0;
    kl:=0;
    nomer:=1;
    prav:=0;
    o1:=0;
    o2:=0;
    o3:=0;
    otv:=0;
end;

//Выход из программы
procedure TForm1.N3Click(Sender: TObject);
begin
  Close;
end;

end.
