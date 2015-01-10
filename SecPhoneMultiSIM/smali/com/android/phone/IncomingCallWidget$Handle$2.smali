.class Lcom/android/phone/IncomingCallWidget$Handle$2;
.super Landroid/os/Handler;
.source "IncomingCallWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IncomingCallWidget$Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/IncomingCallWidget$Handle;


# direct methods
.method constructor <init>(Lcom/android/phone/IncomingCallWidget$Handle;)V
    .locals 0
    .parameter

    .prologue
    .line 571
    iput-object p1, p0, Lcom/android/phone/IncomingCallWidget$Handle$2;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/16 v9, 0x64

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 573
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle$2;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    iget-object v4, v4, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    const-string v5, "handleMessage"

    #calls: Lcom/android/phone/IncomingCallWidget;->log(Ljava/lang/String;Z)V
    invoke-static {v4, v5, v7}, Lcom/android/phone/IncomingCallWidget;->access$200(Lcom/android/phone/IncomingCallWidget;Ljava/lang/String;Z)V

    .line 574
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 611
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 614
    :cond_0
    :goto_0
    return-void

    .line 576
    :sswitch_0
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle$2;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    #getter for: Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/phone/IncomingCallWidget$Handle;->access$300(Lcom/android/phone/IncomingCallWidget$Handle;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 580
    const/4 v1, 0x0

    .line 582
    .local v1, arrowImage:Landroid/widget/ImageView;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v8, :cond_2

    .line 583
    const/4 v3, 0x0

    .line 584
    .local v3, index:I
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle$2;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    #getter for: Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I
    invoke-static {v4}, Lcom/android/phone/IncomingCallWidget$Handle;->access$400(Lcom/android/phone/IncomingCallWidget$Handle;)I

    move-result v4

    if-ne v4, v7, :cond_3

    .line 585
    move v3, v2

    .line 589
    :goto_2
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle$2;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    #getter for: Lcom/android/phone/IncomingCallWidget$Handle;->mArrowImageViews:[Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/phone/IncomingCallWidget$Handle;->access$500(Lcom/android/phone/IncomingCallWidget$Handle;)[Landroid/widget/ImageView;

    move-result-object v4

    aget-object v1, v4, v3

    .line 590
    invoke-virtual {v1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 591
    .local v0, ani:Landroid/view/animation/Animation;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v4

    if-nez v4, :cond_5

    .line 592
    :cond_1
    add-int/lit8 v4, v2, 0x1

    if-eq v8, v4, :cond_4

    .line 593
    const-wide/16 v4, 0x96

    invoke-virtual {p0, v9, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 602
    .end local v0           #ani:Landroid/view/animation/Animation;
    .end local v3           #index:I
    :cond_2
    :goto_3
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle$2;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    #calls: Lcom/android/phone/IncomingCallWidget$Handle;->makeArrowAnimation()Landroid/view/animation/AlphaAnimation;
    invoke-static {v4}, Lcom/android/phone/IncomingCallWidget$Handle;->access$600(Lcom/android/phone/IncomingCallWidget$Handle;)Landroid/view/animation/AlphaAnimation;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 587
    .restart local v3       #index:I
    :cond_3
    rsub-int/lit8 v4, v2, 0x3

    add-int/lit8 v3, v4, -0x1

    goto :goto_2

    .line 596
    .restart local v0       #ani:Landroid/view/animation/Animation;
    :cond_4
    const-wide/16 v4, 0x384

    invoke-virtual {p0, v9, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3

    .line 582
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 606
    .end local v0           #ani:Landroid/view/animation/Animation;
    .end local v1           #arrowImage:Landroid/widget/ImageView;
    .end local v2           #i:I
    .end local v3           #index:I
    :sswitch_1
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle$2;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    iget-object v4, v4, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    iget-object v4, v4, Lcom/android/phone/IncomingCallWidget;->mLeftHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v4, v6}, Lcom/android/phone/IncomingCallWidget$Handle;->setState(I)V

    .line 607
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle$2;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    iget-object v4, v4, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    iget-object v4, v4, Lcom/android/phone/IncomingCallWidget;->mRightHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v4, v6}, Lcom/android/phone/IncomingCallWidget$Handle;->setState(I)V

    goto :goto_0

    .line 574
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method
