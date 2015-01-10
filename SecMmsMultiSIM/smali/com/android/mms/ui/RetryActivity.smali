.class public Lcom/android/mms/ui/RetryActivity;
.super Landroid/app/Activity;
.source "RetryActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/RetryActivity"


# instance fields
.field private final mCancelListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDialog:Landroid/app/AlertDialog;

.field private mError:I

.field private final mRetryListener:Landroid/content/DialogInterface$OnClickListener;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/RetryActivity;->mDialog:Landroid/app/AlertDialog;

    .line 84
    new-instance v0, Lcom/android/mms/ui/RetryActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/RetryActivity$2;-><init>(Lcom/android/mms/ui/RetryActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/RetryActivity;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    .line 92
    new-instance v0, Lcom/android/mms/ui/RetryActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/RetryActivity$3;-><init>(Lcom/android/mms/ui/RetryActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/RetryActivity;->mRetryListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/RetryActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/mms/ui/RetryActivity;->moveMessageToFail()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/RetryActivity;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/mms/ui/RetryActivity;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/RetryActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/android/mms/ui/RetryActivity;->mError:I

    return v0
.end method

.method private initResource()V
    .locals 3

    .prologue
    .line 66
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 67
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a04b7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 68
    const v1, 0x7f0a011e

    iget-object v2, p0, Lcom/android/mms/ui/RetryActivity;->mRetryListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 69
    const v1, 0x7f0a011f

    iget-object v2, p0, Lcom/android/mms/ui/RetryActivity;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 70
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 71
    const v1, 0x7f0a04b8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 73
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/RetryActivity;->mDialog:Landroid/app/AlertDialog;

    .line 74
    iget-object v1, p0, Lcom/android/mms/ui/RetryActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 75
    iget-object v1, p0, Lcom/android/mms/ui/RetryActivity;->mDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/mms/ui/RetryActivity$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/RetryActivity$1;-><init>(Lcom/android/mms/ui/RetryActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 82
    return-void
.end method

.method private moveMessageToFail()V
    .locals 4

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/mms/ui/RetryActivity;->mUri:Landroid/net/Uri;

    const/4 v1, 0x5

    iget v2, p0, Lcom/android/mms/ui/RetryActivity;->mError:I

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    .line 106
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->notifySendFailed(Landroid/content/Context;ZI)V

    .line 107
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mms.transaction.SEND_MESSAGE"

    const/4 v2, 0x0

    const-class v3, Lcom/android/mms/transaction/SmsReceiver;

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 111
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "uri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mms/ui/RetryActivity;->mUri:Landroid/net/Uri;

    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "error"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/RetryActivity;->mError:I

    .line 41
    invoke-direct {p0}, Lcom/android/mms/ui/RetryActivity;->initResource()V

    .line 42
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/mms/ui/RetryActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/mms/ui/RetryActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 62
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 63
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 47
    invoke-direct {p0}, Lcom/android/mms/ui/RetryActivity;->moveMessageToFail()V

    .line 48
    const-string v0, "uri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mms/ui/RetryActivity;->mUri:Landroid/net/Uri;

    .line 49
    const-string v0, "error"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/RetryActivity;->mError:I

    .line 51
    iget-object v0, p0, Lcom/android/mms/ui/RetryActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/mms/ui/RetryActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 54
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/RetryActivity;->initResource()V

    .line 55
    return-void
.end method
