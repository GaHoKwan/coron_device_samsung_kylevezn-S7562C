.class Lcom/sec/android/app/minimode/MiniModeService$1;
.super Ljava/lang/Object;
.source "MiniModeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/minimode/MiniModeService;
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
    .line 296
    iput-object p1, p0, Lcom/sec/android/app/minimode/MiniModeService$1;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService$1;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    const/4 v1, 0x4

    #calls: Lcom/sec/android/app/minimode/MiniModeService;->handleClose(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/minimode/MiniModeService;->access$000(Lcom/sec/android/app/minimode/MiniModeService;I)V

    .line 301
    return-void
.end method
