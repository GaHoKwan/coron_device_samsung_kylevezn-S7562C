.class Lcom/sec/android/app/dialertab/calllog/SplitBarManager$2;
.super Ljava/lang/Object;
.source "SplitBarManager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->setUpSplitBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/SplitBarManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/SplitBarManager;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager$2;->this$0:Lcom/sec/android/app/dialertab/calllog/SplitBarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 163
    const/4 v1, 0x0

    .line 165
    .local v1, width_margin:I
    sget-boolean v3, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->isSupportMultiWindow:Z

    if-eqz v3, :cond_0

    .line 166
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager$2;->this$0:Lcom/sec/android/app/dialertab/calllog/SplitBarManager;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager$2;->this$0:Lcom/sec/android/app/dialertab/calllog/SplitBarManager;

    iget-object v4, v4, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Landroid/sec/multiwindow/MultiWindow;->createInstance(Landroid/app/Activity;)Landroid/sec/multiwindow/MultiWindow;

    move-result-object v4

    #setter for: Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mMW:Landroid/sec/multiwindow/MultiWindow;
    invoke-static {v3, v4}, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->access$002(Lcom/sec/android/app/dialertab/calllog/SplitBarManager;Landroid/sec/multiwindow/MultiWindow;)Landroid/sec/multiwindow/MultiWindow;

    .line 167
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager$2;->this$0:Lcom/sec/android/app/dialertab/calllog/SplitBarManager;

    #getter for: Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mMW:Landroid/sec/multiwindow/MultiWindow;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->access$000(Lcom/sec/android/app/dialertab/calllog/SplitBarManager;)Landroid/sec/multiwindow/MultiWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/multiwindow/MultiWindow;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 168
    .local v0, r:Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 171
    .end local v0           #r:Landroid/graphics/Rect;
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    .line 172
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager$2;->this$0:Lcom/sec/android/app/dialertab/calllog/SplitBarManager;

    iget-object v3, v3, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mLogsListFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    if-eqz v3, :cond_1

    .line 173
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager$2;->this$0:Lcom/sec/android/app/dialertab/calllog/SplitBarManager;

    iget-object v3, v3, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mLogsListFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    instance-of v3, v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    if-eqz v3, :cond_1

    .line 174
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager$2;->this$0:Lcom/sec/android/app/dialertab/calllog/SplitBarManager;

    iget-object v3, v3, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mSplitBarColored:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 175
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager$2;->this$0:Lcom/sec/android/app/dialertab/calllog/SplitBarManager;

    iget-object v3, v3, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mLogsListFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v3, v6}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->setSplitBarEnabled(Z)V

    .line 176
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v2, v3

    .line 177
    .local v2, x:I
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager$2;->this$0:Lcom/sec/android/app/dialertab/calllog/SplitBarManager;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager$2;->this$0:Lcom/sec/android/app/dialertab/calllog/SplitBarManager;

    iget v4, v4, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mSavedX:I

    add-int/lit8 v4, v4, -0x1

    #calls: Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->setSplitView(IZ)V
    invoke-static {v3, v4, v5}, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->access$100(Lcom/sec/android/app/dialertab/calllog/SplitBarManager;IZ)V

    .line 180
    .end local v2           #x:I
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager$2;->this$0:Lcom/sec/android/app/dialertab/calllog/SplitBarManager;

    iget-object v3, v3, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mContactTileListFragment:Lcom/android/contacts/list/ContactTileListFragment;

    if-eqz v3, :cond_2

    .line 181
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager$2;->this$0:Lcom/sec/android/app/dialertab/calllog/SplitBarManager;

    iget-object v3, v3, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mContactTileListFragment:Lcom/android/contacts/list/ContactTileListFragment;

    instance-of v3, v3, Lcom/android/contacts/list/ContactTileListFragment;

    if-eqz v3, :cond_2

    .line 182
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager$2;->this$0:Lcom/sec/android/app/dialertab/calllog/SplitBarManager;

    iget-object v3, v3, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mSplitBarColored:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 183
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager$2;->this$0:Lcom/sec/android/app/dialertab/calllog/SplitBarManager;

    iget-object v3, v3, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mContactTileListFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v3, v6}, Lcom/android/contacts/list/ContactTileListFragment;->setChangingSplitRatioMode(Z)V

    .line 184
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v2, v3

    .line 185
    .restart local v2       #x:I
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager$2;->this$0:Lcom/sec/android/app/dialertab/calllog/SplitBarManager;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager$2;->this$0:Lcom/sec/android/app/dialertab/calllog/SplitBarManager;

    iget v4, v4, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mSavedX:I

    add-int/lit8 v4, v4, -0x1

    #calls: Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->setSplitView(IZ)V
    invoke-static {v3, v4, v5}, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->access$100(Lcom/sec/android/app/dialertab/calllog/SplitBarManager;IZ)V

    .line 209
    .end local v2           #x:I
    :cond_2
    :goto_0
    return v5

    .line 188
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 189
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v2, v3

    .line 190
    .restart local v2       #x:I
    sub-int/2addr v2, v1

    .line 191
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager$2;->this$0:Lcom/sec/android/app/dialertab/calllog/SplitBarManager;

    #calls: Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->setSplitView(IZ)V
    invoke-static {v3, v2, v6}, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->access$100(Lcom/sec/android/app/dialertab/calllog/SplitBarManager;IZ)V

    goto :goto_0

    .line 192
    .end local v2           #x:I
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v6, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 194
    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager$2;->this$0:Lcom/sec/android/app/dialertab/calllog/SplitBarManager;

    iget-object v3, v3, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mSplitBarColored:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 195
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager$2;->this$0:Lcom/sec/android/app/dialertab/calllog/SplitBarManager;

    iget-object v3, v3, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mLogsListFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    if-eqz v3, :cond_6

    .line 196
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager$2;->this$0:Lcom/sec/android/app/dialertab/calllog/SplitBarManager;

    iget-object v3, v3, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mLogsListFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v3, v5}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->setSplitBarEnabled(Z)V

    .line 199
    :cond_6
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager$2;->this$0:Lcom/sec/android/app/dialertab/calllog/SplitBarManager;

    iget-object v3, v3, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mContactTileListFragment:Lcom/android/contacts/list/ContactTileListFragment;

    if-eqz v3, :cond_7

    .line 200
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager$2;->this$0:Lcom/sec/android/app/dialertab/calllog/SplitBarManager;

    iget-object v3, v3, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mContactTileListFragment:Lcom/android/contacts/list/ContactTileListFragment;

    instance-of v3, v3, Lcom/android/contacts/list/ContactTileListFragment;

    if-eqz v3, :cond_7

    .line 201
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager$2;->this$0:Lcom/sec/android/app/dialertab/calllog/SplitBarManager;

    iget-object v3, v3, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mContactTileListFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v3, v5}, Lcom/android/contacts/list/ContactTileListFragment;->setChangingSplitRatioMode(Z)V

    .line 205
    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v2, v3

    .line 206
    .restart local v2       #x:I
    sub-int/2addr v2, v1

    .line 207
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager$2;->this$0:Lcom/sec/android/app/dialertab/calllog/SplitBarManager;

    add-int/lit8 v4, v2, -0x1

    #calls: Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->setSplitView(IZ)V
    invoke-static {v3, v4, v5}, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->access$100(Lcom/sec/android/app/dialertab/calllog/SplitBarManager;IZ)V

    goto :goto_0
.end method
