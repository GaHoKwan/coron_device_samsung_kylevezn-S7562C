.class Lcom/android/mms/ui/SlideshowActivity$18;
.super Landroid/os/Handler;
.source "SlideshowActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideshowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideshowActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2346
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity$18;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 2350
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2356
    :goto_0
    return-void

    .line 2352
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$18;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 2350
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method