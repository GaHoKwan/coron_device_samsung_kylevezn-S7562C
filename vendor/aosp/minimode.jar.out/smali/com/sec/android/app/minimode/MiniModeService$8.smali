.class Lcom/sec/android/app/minimode/MiniModeService$8;
.super Ljava/lang/Object;
.source "MiniModeService.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/minimode/MiniModeService;->endDrag()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/minimode/MiniModeService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/minimode/MiniModeService;)V
    .locals 0
    .parameter

    .prologue
    .line 987
    iput-object p1, p0, Lcom/sec/android/app/minimode/MiniModeService$8;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "fraction"
    .parameter "startValue"
    .parameter "endValue"

    .prologue
    .line 990
    new-instance v0, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;

    check-cast p2, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;

    .end local p2
    check-cast p3, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;

    .end local p3
    invoke-direct {v0, p2, p3, p1}, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;-><init>(Lcom/sec/android/app/minimode/MiniModeService$Vec2D;Lcom/sec/android/app/minimode/MiniModeService$Vec2D;F)V

    return-object v0
.end method
