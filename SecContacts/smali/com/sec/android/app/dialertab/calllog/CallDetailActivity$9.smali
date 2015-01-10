.class Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$9;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.method public run()V
    .locals 1

    .prologue
    .line 2901
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$9;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->tiltPopupAni:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 2902
    return-void
.end method
