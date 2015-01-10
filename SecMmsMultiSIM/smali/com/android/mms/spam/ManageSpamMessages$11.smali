.class Lcom/android/mms/spam/ManageSpamMessages$11;
.super Landroid/os/Handler;
.source "ManageSpamMessages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/spam/ManageSpamMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/spam/ManageSpamMessages;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/ManageSpamMessages;)V
    .locals 0
    .parameter

    .prologue
    .line 1129
    iput-object p1, p0, Lcom/android/mms/spam/ManageSpamMessages$11;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages$11;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    #getter for: Lcom/android/mms/spam/ManageSpamMessages;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/spam/ManageSpamMessages;->access$1800(Lcom/android/mms/spam/ManageSpamMessages;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1133
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages$11;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    #getter for: Lcom/android/mms/spam/ManageSpamMessages;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/spam/ManageSpamMessages;->access$1800(Lcom/android/mms/spam/ManageSpamMessages;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1134
    :cond_0
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages$11;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/spam/ManageSpamMessages;->setMode(I)V

    .line 1135
    return-void
.end method
