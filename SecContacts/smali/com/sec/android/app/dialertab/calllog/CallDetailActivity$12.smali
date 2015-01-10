.class Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$12;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 2919
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$12;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mMotionTiltDialog:Landroid/app/AlertDialog;

    .line 2920
    return-void
.end method
