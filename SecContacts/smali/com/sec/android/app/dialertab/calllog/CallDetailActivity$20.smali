.class Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$20;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->showAddtoRejectListConfirmDlg(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

.field final synthetic val$not_show_again:Lcom/sec/android/touchwiz/widget/TwCheckBox;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3043
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$20;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$20;->val$not_show_again:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 3045
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$20;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$20;->val$not_show_again:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    #setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bCheckedBefore:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$2702(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Z)Z

    .line 3046
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$20;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bCheckedBefore:Z
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$2700(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3047
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$20;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    #calls: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->saveViewStatusPreference()V
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$2800(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)V

    .line 3049
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$20;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContextForDialog:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$2900(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$20;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumberForDialog:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$3000(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockContact(Landroid/content/Context;Ljava/lang/String;)Z

    .line 3050
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$20;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->invalidateOptionsMenu()V

    .line 3051
    return-void
.end method
