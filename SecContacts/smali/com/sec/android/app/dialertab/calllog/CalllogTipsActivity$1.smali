.class Lcom/sec/android/app/dialertab/calllog/CalllogTipsActivity$1;
.super Ljava/lang/Object;
.source "CalllogTipsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/CalllogTipsActivity;->configureContentView(ZLandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CalllogTipsActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CalllogTipsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CalllogTipsActivity$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CalllogTipsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CalllogTipsActivity$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CalllogTipsActivity;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CalllogTipsActivity;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CalllogTipsActivity;->access$000(Lcom/sec/android/app/dialertab/calllog/CalllogTipsActivity;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CalllogTipsActivity$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CalllogTipsActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CalllogTipsActivity;->neverShowCalllogTipsAgain(Landroid/content/Context;)V

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CalllogTipsActivity$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CalllogTipsActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CalllogTipsActivity;->finish()V

    .line 59
    return-void
.end method
