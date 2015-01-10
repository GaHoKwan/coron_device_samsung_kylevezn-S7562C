.class Lcom/android/mms/ui/MessageUtils$10$1;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageUtils$10;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageUtils$10;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageUtils$10;)V
    .locals 0
    .parameter

    .prologue
    .line 2306
    iput-object p1, p0, Lcom/android/mms/ui/MessageUtils$10$1;->this$0:Lcom/android/mms/ui/MessageUtils$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2308
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$10$1;->this$0:Lcom/android/mms/ui/MessageUtils$10;

    iget-object v0, v0, Lcom/android/mms/ui/MessageUtils$10;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageUtils$10$1;->this$0:Lcom/android/mms/ui/MessageUtils$10;

    iget-object v1, v1, Lcom/android/mms/ui/MessageUtils$10;->val$address:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/ui/MessageUtils$10$1;->this$0:Lcom/android/mms/ui/MessageUtils$10;

    iget v2, v2, Lcom/android/mms/ui/MessageUtils$10;->val$vl_SimSlot:I

    iget-object v3, p0, Lcom/android/mms/ui/MessageUtils$10$1;->this$0:Lcom/android/mms/ui/MessageUtils$10;

    iget-object v3, v3, Lcom/android/mms/ui/MessageUtils$10;->val$sl_IMSI:Ljava/lang/String;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/mms/ui/MessageUtils$10$1;->this$0:Lcom/android/mms/ui/MessageUtils$10;

    iget-object v5, v5, Lcom/android/mms/ui/MessageUtils$10;->val$mmsId:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/mms/ui/MessageUtils$10$1;->this$0:Lcom/android/mms/ui/MessageUtils$10;

    iget v6, v6, Lcom/android/mms/ui/MessageUtils$10;->val$status:I

    invoke-static/range {v0 .. v6}, Lcom/android/mms/transaction/MmsMessageSender;->sendReadRec(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;I)V

    .line 2310
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$10$1;->this$0:Lcom/android/mms/ui/MessageUtils$10;

    iget-object v0, v0, Lcom/android/mms/ui/MessageUtils$10;->val$callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$10$1;->this$0:Lcom/android/mms/ui/MessageUtils$10;

    iget-object v0, v0, Lcom/android/mms/ui/MessageUtils$10;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2311
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2312
    return-void
.end method
