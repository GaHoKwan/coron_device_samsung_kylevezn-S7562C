.class Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$15;
.super Ljava/lang/Object;
.source "CallDetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->showAddtoRejectListConfirmDlg(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

.field final synthetic val$not_show_again:Lcom/sec/android/touchwiz/widget/TwCheckBox;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1702
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$15;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$15;->val$not_show_again:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1704
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$15;->val$not_show_again:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCheckedBefore:Z

    .line 1705
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCheckedBefore:Z

    if-eqz v0, :cond_0

    .line 1706
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$15;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #calls: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->saveViewStatusPreference()V
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2700(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)V

    .line 1708
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$15;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContextForDialog:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2800(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$15;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumberForDialog:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$2900(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockContact(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1709
    return-void
.end method
