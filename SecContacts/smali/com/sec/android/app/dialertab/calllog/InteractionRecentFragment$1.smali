.class Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$1;
.super Ljava/lang/Object;
.source "InteractionRecentFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->onRestoreInstanceState(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 405
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$1;->this$0:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 407
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$1;->this$0:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->isPopupForeground:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->access$002(Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;Z)Z

    .line 408
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$1;->this$0:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    const/4 v1, -0x1

    #setter for: Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->popupCount:I
    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->access$102(Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;I)I

    .line 409
    return-void
.end method
