.class Lcom/sec/android/app/minimode/MiniModeService$22;
.super Ljava/lang/Object;
.source "MiniModeService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/minimode/MiniModeService;->setContentViewInner(IIII)V
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
    .line 1937
    iput-object p1, p0, Lcom/sec/android/app/minimode/MiniModeService$22;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1939
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService$22;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    const/4 v1, 0x3

    #calls: Lcom/sec/android/app/minimode/MiniModeService;->handleClose(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/minimode/MiniModeService;->access$000(Lcom/sec/android/app/minimode/MiniModeService;I)V

    .line 1940
    return-void
.end method
