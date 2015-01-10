.class Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$6;
.super Ljava/lang/Object;
.source "CallDetailDeleteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->showDeleteConfirmDlg(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

.field final synthetic val$iOpIndex:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 567
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$6;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    iput p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$6;->val$iOpIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 569
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$6;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    #setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->deletedData:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$502(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;Z)Z

    .line 570
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$6;->val$iOpIndex:I

    packed-switch v0, :pswitch_data_0

    .line 589
    :goto_0
    return-void

    .line 577
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$6;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->checkedItemList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$600(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$6;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-direct {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)V

    new-array v1, v2, [Ljava/lang/Integer;

    iget v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$6;->val$iOpIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 579
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$6;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->showProgress()V

    goto :goto_0

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$6;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    const v1, 0x7f0d0361

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 570
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
