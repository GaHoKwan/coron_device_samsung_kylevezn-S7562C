.class Lcom/android/mms/ui/PushMessageDialog$1;
.super Lcom/android/mms/ui/PushMessageDialog$ConfirmWPMOnClickListener;
.source "PushMessageDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/PushMessageDialog;->displayWappushMessage(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/PushMessageDialog;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/PushMessageDialog;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/mms/ui/PushMessageDialog$1;->this$0:Lcom/android/mms/ui/PushMessageDialog;

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/PushMessageDialog$ConfirmWPMOnClickListener;-><init>(Lcom/android/mms/ui/PushMessageDialog;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/mms/ui/PushMessageDialog$ConfirmWPMOnClickListener;->href:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/ui/PushMessageDialog$1;->this$0:Lcom/android/mms/ui/PushMessageDialog;

    invoke-static {v0, v1}, Lcom/android/mms/transaction/WapPushReceiverService;->processHref(Ljava/lang/String;Landroid/content/Context;)V

    .line 113
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 114
    iget-object v0, p0, Lcom/android/mms/ui/PushMessageDialog$1;->this$0:Lcom/android/mms/ui/PushMessageDialog;

    #calls: Lcom/android/mms/ui/PushMessageDialog;->processNextMessage()V
    invoke-static {v0}, Lcom/android/mms/ui/PushMessageDialog;->access$000(Lcom/android/mms/ui/PushMessageDialog;)V

    .line 115
    return-void
.end method