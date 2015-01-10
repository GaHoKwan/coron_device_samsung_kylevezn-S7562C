.class Lcom/android/mms/ui/BoxListFrame$11;
.super Landroid/os/Handler;
.source "BoxListFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/BoxListFrame;->getDeleteEventHandler()Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/BoxListFrame;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BoxListFrame;)V
    .locals 0
    .parameter

    .prologue
    .line 1338
    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame$11;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1342
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1350
    :goto_0
    return-void

    .line 1344
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$11;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListFrame;->onDeleteStart()V

    goto :goto_0

    .line 1347
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$11;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListFrame;->onDeleteCompleted()V

    goto :goto_0

    .line 1342
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
