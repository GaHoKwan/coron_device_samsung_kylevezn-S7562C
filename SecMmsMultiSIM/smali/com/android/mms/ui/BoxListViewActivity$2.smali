.class Lcom/android/mms/ui/BoxListViewActivity$2;
.super Ljava/lang/Object;
.source "BoxListViewActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/BoxListViewActivity;->initSplitManager()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mDownX:I

.field final synthetic this$0:Lcom/android/mms/ui/BoxListViewActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BoxListViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 976
    iput-object p1, p0, Lcom/android/mms/ui/BoxListViewActivity$2;->this$0:Lcom/android/mms/ui/BoxListViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "ev"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 980
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 981
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity$2;->this$0:Lcom/android/mms/ui/BoxListViewActivity;

    #getter for: Lcom/android/mms/ui/BoxListViewActivity;->mSplitBar:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListViewActivity;->access$200(Lcom/android/mms/ui/BoxListViewActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    const v2, 0x7f020261

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 982
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/mms/ui/BoxListViewActivity$2;->mDownX:I

    .line 984
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity$2;->this$0:Lcom/android/mms/ui/BoxListViewActivity;

    #setter for: Lcom/android/mms/ui/BoxListViewActivity;->mIsSplitBarTouch:Z
    invoke-static {v1, v4}, Lcom/android/mms/ui/BoxListViewActivity;->access$302(Lcom/android/mms/ui/BoxListViewActivity;Z)Z

    .line 985
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity$2;->this$0:Lcom/android/mms/ui/BoxListViewActivity;

    #getter for: Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListViewActivity;->access$000(Lcom/android/mms/ui/BoxListViewActivity;)Lcom/android/mms/ui/BoxListFrame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListFrame;->drawMessageTouchPointer()V

    .line 998
    :cond_0
    :goto_0
    return v3

    .line 987
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 988
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v0, v1

    .line 989
    .local v0, x:I
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity$2;->this$0:Lcom/android/mms/ui/BoxListViewActivity;

    #getter for: Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListViewActivity;->access$400(Lcom/android/mms/ui/BoxListViewActivity;)Lcom/android/mms/ui/SplitManager;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/BoxListViewActivity$2;->mDownX:I

    sub-int v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/SplitManager;->UpdateSplitPosition(I)Z

    .line 990
    iput v0, p0, Lcom/android/mms/ui/BoxListViewActivity$2;->mDownX:I

    goto :goto_0

    .line 991
    .end local v0           #x:I
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v4, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 992
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity$2;->this$0:Lcom/android/mms/ui/BoxListViewActivity;

    #getter for: Lcom/android/mms/ui/BoxListViewActivity;->mSplitBar:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListViewActivity;->access$200(Lcom/android/mms/ui/BoxListViewActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    const v2, 0x7f020050

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 993
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity$2;->this$0:Lcom/android/mms/ui/BoxListViewActivity;

    #getter for: Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListViewActivity;->access$400(Lcom/android/mms/ui/BoxListViewActivity;)Lcom/android/mms/ui/SplitManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/SplitManager;->saveSplitPosition()V

    .line 995
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity$2;->this$0:Lcom/android/mms/ui/BoxListViewActivity;

    #setter for: Lcom/android/mms/ui/BoxListViewActivity;->mIsSplitBarTouch:Z
    invoke-static {v1, v3}, Lcom/android/mms/ui/BoxListViewActivity;->access$302(Lcom/android/mms/ui/BoxListViewActivity;Z)Z

    .line 996
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity$2;->this$0:Lcom/android/mms/ui/BoxListViewActivity;

    #getter for: Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListViewActivity;->access$000(Lcom/android/mms/ui/BoxListViewActivity;)Lcom/android/mms/ui/BoxListFrame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListFrame;->drawMessageTouchPointer()V

    goto :goto_0
.end method
