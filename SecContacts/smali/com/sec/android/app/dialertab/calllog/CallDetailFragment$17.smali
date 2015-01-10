.class Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$17;
.super Ljava/lang/Object;
.source "CallDetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->showDeleteConfirmDlg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1809
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$17;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1811
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$PerformScan;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$17;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    invoke-direct {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$PerformScan;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1812
    return-void
.end method
