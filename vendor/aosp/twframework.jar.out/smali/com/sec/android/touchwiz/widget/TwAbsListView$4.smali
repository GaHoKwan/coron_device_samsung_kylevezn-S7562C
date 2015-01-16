.class Lcom/sec/android/touchwiz/widget/TwAbsListView$4;
.super Ljava/lang/Object;
.source "TwAbsListView.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V
    .locals 0
    .parameter

    .prologue
    .line 8599
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$4;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .locals 3
    .parameter "motionEvent"

    .prologue
    .line 8601
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$4;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionEnable:Z
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$5000(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$4;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHasWindowFocusForMotion:Z
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$5100(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8628
    :cond_0
    :goto_0
    return-void

    .line 8605
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    .line 8606
    .local v0, motion:I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 8608
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$4;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v2, 0x1

    #setter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDoubleTapDone:Z
    invoke-static {v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$5202(Lcom/sec/android/touchwiz/widget/TwAbsListView;Z)Z

    .line 8619
    const-string v1, "[Motion-DoubleTap]"

    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->log(Ljava/lang/String;)V

    .line 8620
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$4;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getLastVisiblePosition()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$4;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_2

    .line 8621
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$4;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$4;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->setSelection(I)V

    .line 8623
    :cond_2
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$4;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollToPosition(I)V

    goto :goto_0

    .line 8606
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
