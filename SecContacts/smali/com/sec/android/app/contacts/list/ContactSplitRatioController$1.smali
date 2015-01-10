.class Lcom/sec/android/app/contacts/list/ContactSplitRatioController$1;
.super Ljava/lang/Object;
.source "ContactSplitRatioController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->configureSplitBarListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$1;->this$0:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "view"
    .parameter "event"

    .prologue
    const/16 v6, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 162
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    move v3, v4

    .line 211
    :goto_0
    return v3

    .line 164
    :pswitch_0
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$1;->this$0:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    #getter for: Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mSplitBar:Landroid/view/View;
    invoke-static {v5}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->access$000(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 165
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$1;->this$0:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    #getter for: Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mFocusedSplitBar:Landroid/view/View;
    invoke-static {v5}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->access$100(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 166
    iget-object v4, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$1;->this$0:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    #getter for: Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mListener:Lcom/sec/android/app/contacts/list/ContactSplitRatioController$ContactSplitRatioListener;
    invoke-static {v4}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->access$200(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;)Lcom/sec/android/app/contacts/list/ContactSplitRatioController$ContactSplitRatioListener;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$ContactSplitRatioListener$Operation;->START_CHANGING_SPLIT_RATIO:Lcom/sec/android/app/contacts/list/ContactSplitRatioController$ContactSplitRatioListener$Operation;

    invoke-interface {v4, v5}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$ContactSplitRatioListener;->onOperation(Lcom/sec/android/app/contacts/list/ContactSplitRatioController$ContactSplitRatioListener$Operation;)V

    goto :goto_0

    .line 170
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v2, v5

    .line 171
    .local v2, positionX:I
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldApplyUiMirroring()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 172
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$1;->this$0:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    #getter for: Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mScreenWidth:I
    invoke-static {v5}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->access$300(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;)I

    move-result v5

    sub-int v2, v5, v2

    .line 174
    :cond_0
    const/4 v0, 0x0

    .line 176
    .local v0, XOffset:I
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$1;->this$0:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    #getter for: Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mMW:Landroid/sec/multiwindow/MultiWindow;
    invoke-static {v5}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->access$400(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;)Landroid/sec/multiwindow/MultiWindow;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$1;->this$0:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    #getter for: Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mMW:Landroid/sec/multiwindow/MultiWindow;
    invoke-static {v5}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->access$400(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;)Landroid/sec/multiwindow/MultiWindow;

    move-result-object v5

    invoke-virtual {v5}, Landroid/sec/multiwindow/MultiWindow;->isMultiWindow()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 183
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$1;->this$0:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    #getter for: Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->access$500(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->x:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$1;->this$0:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    #setter for: Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->DeltaX:I
    invoke-static {v4, v0}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->access$602(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;I)I

    .line 201
    :goto_2
    iget-object v4, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$1;->this$0:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    iget-object v5, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$1;->this$0:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    #getter for: Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->DeltaX:I
    invoke-static {v5}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->access$600(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;)I

    move-result v5

    #calls: Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->setLeftPaneWidth(II)V
    invoke-static {v4, v2, v5}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->access$700(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;II)V

    goto :goto_0

    .line 185
    :catch_0
    move-exception v1

    .line 187
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 197
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$1;->this$0:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    #setter for: Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->DeltaX:I
    invoke-static {v5, v4}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->access$602(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;I)I

    goto :goto_2

    .line 205
    .end local v0           #XOffset:I
    .end local v2           #positionX:I
    :pswitch_2
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$1;->this$0:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    #getter for: Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mSplitBar:Landroid/view/View;
    invoke-static {v5}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->access$000(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 206
    iget-object v4, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$1;->this$0:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    #getter for: Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mFocusedSplitBar:Landroid/view/View;
    invoke-static {v4}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->access$100(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 207
    iget-object v4, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$1;->this$0:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    #getter for: Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mListener:Lcom/sec/android/app/contacts/list/ContactSplitRatioController$ContactSplitRatioListener;
    invoke-static {v4}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->access$200(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;)Lcom/sec/android/app/contacts/list/ContactSplitRatioController$ContactSplitRatioListener;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$ContactSplitRatioListener$Operation;->STOP_CHANGING_SPLIT_RATIO:Lcom/sec/android/app/contacts/list/ContactSplitRatioController$ContactSplitRatioListener$Operation;

    invoke-interface {v4, v5}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$ContactSplitRatioListener;->onOperation(Lcom/sec/android/app/contacts/list/ContactSplitRatioController$ContactSplitRatioListener$Operation;)V

    goto/16 :goto_0

    .line 162
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
