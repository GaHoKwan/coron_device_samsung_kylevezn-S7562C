.class Lcom/sec/android/app/dialertab/calllog/CallLogFragment$14;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->showDeleteHistoryLogsConfirmDlg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1685
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$14;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 1688
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$14;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$900(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/android/contacts/util/AsyncTaskExecutor;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$Tasks;->REMOVE_ITME_FROM_CALL_LOG:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$Tasks;

    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$14$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$14$1;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment$14;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/contacts/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1703
    return-void
.end method
