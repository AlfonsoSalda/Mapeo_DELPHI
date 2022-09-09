unit Mapeo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Panel1: TPanel;
    Button1: TButton;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.Button1Click(Sender: TObject);
  var mx,my,bx,by,xtmax,xtmin,ytmax,ytmin,xmax,xmin,ymax,ymin:real;
  //var coor:array[1..8] of TPoint;
  var xt:array[1..8] of real;
  var yt:array[1..8] of real;
  var x1,x2,x3,x4,x5,x6,x7,x8:real;
  var y1,y2,y3,y4,y5,y6,y7,y8:real;
  var cx:array[1..8]of string;
  var cy:array[1..8]of string;
  var ix:array[1..8]of integer;
  var iy:array[1..8]of integer;
  var aux:integer;
  var aux2:real;

begin
x1:=-4.0;
x2:=-3.5;
x3:=-3.0;
x4:=-2.5;
x5:=-2.0;
x6:=2;
x7:=2.8;
x8:=4;
y1:=9;
y2:=14;
y3:=-18.56;
y4:=-6.32;
y5:=13.16;
y6:=-8.19;
y7:=59.6;
y8:=69.78;
xtmax:=400;
xtmin:=0;
ytmax:=400;
ytmin:=0;
xmax:=x8;
xmin:=x1;
ymax:=y8;
ymin:=y3;
//coor[1].X:=-4.0;

mx:=(xtmax-xtmin)/(xmax-xmin);
my:=(ytmax-ytmin)/(ymax-ymin);
bx:=xtmax-mx*xmax;
by:=ytmax-my*ymax;




xt[1]:=mx*x1+bx;
xt[2]:=mx*x2+bx;
xt[3]:=mx*x3+bx;
xt[4]:=mx*x4+bx;
xt[5]:=mx*x5+bx;
xt[6]:=mx*x6+bx;
xt[7]:=mx*x7+bx;
xt[8]:=mx*x8+bx;

yt[1]:=my*y1+by;
yt[2]:=my*y2+by;
yt[3]:=my*y3+by;
yt[4]:=my*y4+by;
yt[5]:=my*y5+by;
yt[6]:=my*y6+by;
yt[7]:=my*y7+by;
yt[8]:=my*y8+by;

ix[1]:=round (xt[1]);
ix[2]:=round (xt[2]);
ix[3]:=round (xt[3]);
ix[4]:=round (xt[4]);
ix[5]:=round (xt[5]);
ix[6]:=round (xt[6]);
ix[7]:=round (xt[7]);
ix[8]:=round (xt[8]);

iy[1]:=round(yt[1]);
iy[2]:=round(yt[2]);
iy[3]:=round(yt[3]);
iy[4]:=round(yt[4]);
iy[5]:=round(yt[5]);
iy[6]:=round(yt[6]);
iy[7]:=round(yt[7]);
iy[8]:=round(yt[8]);

str(ix[1],cx[1]);
str(ix[2],cx[2]);
str(ix[3],cx[3]);
str(ix[4],cx[4]);
str(ix[5],cx[5]);
str(ix[6],cx[6]);
str(ix[7],cx[7]);
str(ix[8],cx[8]);

str(iy[1],cy[1]);
str(iy[2],cy[2]);
str(iy[3],cy[3]);
str(iy[4],cy[4]);
str(iy[5],cy[5]);
str(iy[6],cy[6]);
str(iy[7],cy[7]);
str(iy[8],cy[8]);

{*
ix[1]:=trunc (xt[1]);
ix[2]:=trunc (xt[2]);
ix[3]:=trunc (xt[3]);
ix[4]:=trunc (xt[4]);
ix[5]:=trunc (xt[5]);
ix[6]:=trunc (xt[6]);
ix[7]:=trunc (xt[7]);
ix[8]:=trunc (xt[8]);

iy[1]:=trunc(yt[1]);
iy[2]:=trunc(yt[2]);
iy[3]:=trunc(yt[3]);
iy[4]:=trunc(yt[4]);
iy[5]:=trunc(yt[5]);
iy[6]:=trunc(yt[6]);
iy[7]:=trunc(yt[7]);
iy[8]:=trunc(yt[8]);
*}

aux2:=3.5;
//aux:=round(aux2);

{*
ix[1]:=ix[1]*(-1);
ix[2]:=ix[2]*(-1);
ix[3]:=ix[3]*(-1);
ix[4]:=ix[4]*(-1);
ix[5]:=ix[5]*(-1);
ix[6]:=ix[6]*(-1);
ix[7]:=ix[7]*(-1);
ix[8]:=ix[8]*(-1);

iy[1]:=iy[1]*(-1);
iy[2]:=iy[2]*(-1);
iy[3]:=iy[3]*(-1);
iy[4]:=iy[4]*(-1);
iy[5]:=iy[5]*(-1);
iy[6]:=iy[6]*(-1);
iy[7]:=iy[7]*(-1);
iy[8]:=iy[8]*(-1);
*}


Image1.Canvas.MoveTo(ix[1],iy[1]);
Image1.Canvas.LineTo(ix[2],iy[2]);

Image1.Canvas.MoveTo(ix[2],iy[2]);
Image1.Canvas.LineTo(ix[3],iy[3]);

Image1.Canvas.MoveTo(ix[3],iy[3]);
Image1.Canvas.LineTo(ix[4],iy[4]);

Image1.Canvas.MoveTo(ix[4],iy[4]);
Image1.Canvas.LineTo(ix[5],iy[5]);

Image1.Canvas.MoveTo(ix[5],iy[5]);
Image1.Canvas.LineTo(ix[6],iy[6]);

Image1.Canvas.MoveTo(ix[6],iy[6]);
Image1.Canvas.LineTo(ix[7],iy[7]);

Image1.Canvas.MoveTo(ix[7],iy[7]);
Image1.Canvas.LineTo(ix[8],iy[8]);


ShowMessage('XT1= '+cx[1]+#13#10+'YT1= '+cy[1]+#13#10+'XT2= '+cx[2]+#13#10+'YT2= '+cy[2]+#13#10+'XT3= '+cx[3]+#13#10+'YT3= '+cy[3]+#13#10+'XT4= '+cx[4]+#13#10+'YT4= '+cy[4]+#13#10+'XT5= '+cx[5]+#13#10+'YT5= '+cy[5]+#13#10+'XT6= '+cx[6]+#13#10+'YT6= '+cy[6]+#13#10+'XT7= '+cx[7]+#13#10+'YT7= '+cy[7]+#13#10+'XT8= '+cx[8]+#13#10+'YT8= '+cy[8]+#13#10+'');

end;

end.
