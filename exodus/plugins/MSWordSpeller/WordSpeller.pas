unit WordSpeller;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
    ExodusCOM_TLB, Word2000, ChatSpeller,
    Classes, ComObj, ActiveX, ExodusWordSpeller_TLB, StdVcl;

type
  TWordSpeller = class(TAutoObject, IWordSpeller, IExodusPlugin)
  protected
    procedure Startup(const ExodusController: IExodusController); safecall;
    procedure Shutdown; safecall;
    procedure Process(const xml: WideString); safecall;
    procedure NewChat(const jid: WideString; const Chat: IExodusChat); safecall;
    procedure NewRoom(const jid: WideString; const Room: IExodusChat); safecall;
    { Protected declarations }
  private
    _exodus: IExodusController;
    _word: TWordApplication;
  end;

implementation

uses ComServ;

procedure TWordSpeller.Startup(const ExodusController: IExodusController);
begin
    // exodus is starting up...
    _exodus := ExodusController;

    // init the word instance for the plugin
    _word := TWordApplication.Create(nil);
    _word.CheckSpelling('hello');
end;

procedure TWordSpeller.Shutdown;
begin
    // exodus is shutting down... do cleanup
end;

procedure TWordSpeller.NewChat(const JID: WideString; Const Chat: IExodusChat);
var
    cp: TChatSpeller;
    chat_com: IExodusChat;
    e: ExodusChatPlugin;
begin
    // a new chat window is firing up
    chat_com := IUnknown(Chat) as IExodusChat;
    cp := TChatSpeller.Create(_word, chat_com);
    cp.ObjAddRef();
    cp.ObjAddRef();
    cp.reg_id := chat_com.RegisterPlugin(e);
end;

procedure TWordSpeller.NewRoom(const JID: WideString; Const Room: IExodusChat);
begin
    // a new TC Room is firing up
end;

procedure TWordSpeller.Process(const xml: WideString);
begin
    // we are getting some kind of Packet from a callback
end;

initialization
  TAutoObjectFactory.Create(ComServer, TWordSpeller, Class_WordSpeller,
    ciMultiInstance, tmApartment);
end.
