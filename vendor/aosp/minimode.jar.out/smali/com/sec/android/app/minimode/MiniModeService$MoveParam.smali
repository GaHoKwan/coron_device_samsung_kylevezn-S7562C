.class Lcom/sec/android/app/minimode/MiniModeService$MoveParam;
.super Ljava/lang/Object;
.source "MiniModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/minimode/MiniModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoveParam"
.end annotation


# instance fields
.field public bodyViewHeight:I

.field public bodyViewWidth:I

.field public mainViewHeight:I

.field public mainViewWidth:I

.field final synthetic this$0:Lcom/sec/android/app/minimode/MiniModeService;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/minimode/MiniModeService;IIII)V
    .locals 0
    .parameter
    .parameter "mainWidth"
    .parameter "mainHeight"
    .parameter "bodyWidth"
    .parameter "bodyHeight"

    .prologue
    .line 1304
    iput-object p1, p0, Lcom/sec/android/app/minimode/MiniModeService$MoveParam;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1305
    iput p2, p0, Lcom/sec/android/app/minimode/MiniModeService$MoveParam;->mainViewWidth:I

    .line 1306
    iput p3, p0, Lcom/sec/android/app/minimode/MiniModeService$MoveParam;->mainViewHeight:I

    .line 1307
    iput p4, p0, Lcom/sec/android/app/minimode/MiniModeService$MoveParam;->bodyViewWidth:I

    .line 1308
    iput p5, p0, Lcom/sec/android/app/minimode/MiniModeService$MoveParam;->bodyViewHeight:I

    .line 1309
    return-void
.end method
