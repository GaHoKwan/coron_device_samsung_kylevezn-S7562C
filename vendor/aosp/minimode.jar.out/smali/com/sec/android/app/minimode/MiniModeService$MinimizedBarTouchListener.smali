.class public Lcom/sec/android/app/minimode/MiniModeService$MinimizedBarTouchListener;
.super Ljava/lang/Object;
.source "MiniModeService.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/minimode/MiniModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MinimizedBarTouchListener"
.end annotation


# instance fields
.field protected MODULE_TAG:Ljava/lang/String;

.field private mPosX:I

.field private mPosY:I

.field final synthetic this$0:Lcom/sec/android/app/minimode/MiniModeService;


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/minimode/MiniModeService;)V
    .locals 1
    .parameter

    .prologue
    .line 1353
    iput-object p1, p0, Lcom/sec/android/app/minimode/MiniModeService$MinimizedBarTouchListener;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1356
    const-string v0, "MinimizedBarTouchListener"

    iput-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService$MinimizedBarTouchListener;->MODULE_TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "view"
    .parameter "event"

    .prologue
    .line 1359
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1360
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 1403
    :cond_0
    :goto_0
    const/4 v7, 0x1

    return v7

    .line 1362
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/sec/android/app/minimode/MiniModeService$MinimizedBarTouchListener;->mPosX:I

    .line 1363
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/sec/android/app/minimode/MiniModeService$MinimizedBarTouchListener;->mPosY:I

    .line 1366
    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService$MinimizedBarTouchListener;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #calls: Lcom/sec/android/app/minimode/MiniModeService;->startDrag()V
    invoke-static {v7}, Lcom/sec/android/app/minimode/MiniModeService;->access$2700(Lcom/sec/android/app/minimode/MiniModeService;)V

    goto :goto_0

    .line 1369
    :pswitch_1
    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService$MinimizedBarTouchListener;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mStartDrag:Z
    invoke-static {v7}, Lcom/sec/android/app/minimode/MiniModeService;->access$2800(Lcom/sec/android/app/minimode/MiniModeService;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1372
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-int v5, v7

    .line 1373
    .local v5, x:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v6, v7

    .line 1375
    .local v6, y:I
    iget v7, p0, Lcom/sec/android/app/minimode/MiniModeService$MinimizedBarTouchListener;->mPosX:I

    sub-int v1, v5, v7

    .line 1376
    .local v1, moveX:I
    iget v7, p0, Lcom/sec/android/app/minimode/MiniModeService$MinimizedBarTouchListener;->mPosY:I

    sub-int v2, v6, v7

    .line 1378
    .local v2, moveY:I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/minimode/MiniModeService$MinimizedBarTouchListener;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget v8, v8, Lcom/sec/android/app/minimode/MiniModeService;->X_AXIS_MOVEMENT_THRESHOLD_FOR_DRAG_WINDOW:I

    if-gt v7, v8, :cond_1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/minimode/MiniModeService$MinimizedBarTouchListener;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget v8, v8, Lcom/sec/android/app/minimode/MiniModeService;->Y_AXIS_MOVEMENT_THRESHOLD_FOR_DRAG_WINDOW:I

    if-le v7, v8, :cond_0

    .line 1379
    :cond_1
    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService$MinimizedBarTouchListener;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v7, v7, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int v3, v7, v1

    .line 1380
    .local v3, newX:I
    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService$MinimizedBarTouchListener;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v7, v7, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int v4, v7, v2

    .line 1382
    .local v4, newY:I
    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService$MinimizedBarTouchListener;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v7, v7, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iput v3, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1383
    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService$MinimizedBarTouchListener;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v7, v7, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iput v4, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1384
    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService$MinimizedBarTouchListener;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mWindow:Landroid/view/Window;
    invoke-static {v7}, Lcom/sec/android/app/minimode/MiniModeService;->access$900(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/Window;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/minimode/MiniModeService$MinimizedBarTouchListener;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v8, v8, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v7, v8}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1386
    iput v5, p0, Lcom/sec/android/app/minimode/MiniModeService$MinimizedBarTouchListener;->mPosX:I

    .line 1387
    iput v6, p0, Lcom/sec/android/app/minimode/MiniModeService$MinimizedBarTouchListener;->mPosY:I

    goto :goto_0

    .line 1395
    .end local v1           #moveX:I
    .end local v2           #moveY:I
    .end local v3           #newX:I
    .end local v4           #newY:I
    .end local v5           #x:I
    .end local v6           #y:I
    :pswitch_2
    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService$MinimizedBarTouchListener;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #calls: Lcom/sec/android/app/minimode/MiniModeService;->endDrag()V
    invoke-static {v7}, Lcom/sec/android/app/minimode/MiniModeService;->access$2900(Lcom/sec/android/app/minimode/MiniModeService;)V

    goto :goto_0

    .line 1360
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
