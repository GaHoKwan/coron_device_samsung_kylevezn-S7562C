.class Lcom/sec/android/app/minimode/MiniModeService$4;
.super Landroid/telephony/PhoneStateListener;
.source "MiniModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/minimode/MiniModeService;->initTelephonyEventListener()V
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
    .line 524
    iput-object p1, p0, Lcom/sec/android/app/minimode/MiniModeService$4;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 526
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService$4;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    const/4 v1, 0x5

    #calls: Lcom/sec/android/app/minimode/MiniModeService;->handleClose(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/minimode/MiniModeService;->access$000(Lcom/sec/android/app/minimode/MiniModeService;I)V

    .line 529
    :cond_0
    return-void
.end method
