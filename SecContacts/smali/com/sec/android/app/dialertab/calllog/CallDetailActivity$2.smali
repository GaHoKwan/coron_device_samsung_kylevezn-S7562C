.class Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$2;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 515
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$2;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x1

    .line 518
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$2;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    #calls: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->finishPhoneNumerSelectedActionModeIfShown()Z
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$100(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 521
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$2;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    iget-boolean v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->keyPressed:Z

    if-nez v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$2;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    iput-boolean v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->keyPressed:Z

    .line 524
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$2;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->secondaryIntent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 525
    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$202(Z)Z

    goto :goto_0
.end method
