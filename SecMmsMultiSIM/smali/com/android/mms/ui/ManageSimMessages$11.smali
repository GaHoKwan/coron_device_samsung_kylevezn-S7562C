.class Lcom/android/mms/ui/ManageSimMessages$11;
.super Landroid/os/Handler;
.source "ManageSimMessages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ManageSimMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ManageSimMessages;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ManageSimMessages;)V
    .locals 0
    .parameter

    .prologue
    .line 1597
    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages$11;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1600
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$11;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$2800(Lcom/android/mms/ui/ManageSimMessages;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1601
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$11;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$2800(Lcom/android/mms/ui/ManageSimMessages;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1602
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$11;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    const/4 v1, 0x0

    const/4 v2, 0x1

    #calls: Lcom/android/mms/ui/ManageSimMessages;->setMode(IZ)V
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ManageSimMessages;->access$2900(Lcom/android/mms/ui/ManageSimMessages;IZ)V

    .line 1603
    return-void
.end method
