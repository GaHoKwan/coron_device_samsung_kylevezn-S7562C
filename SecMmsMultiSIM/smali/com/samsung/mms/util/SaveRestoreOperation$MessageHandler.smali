.class Lcom/samsung/mms/util/SaveRestoreOperation$MessageHandler;
.super Landroid/os/Handler;
.source "SaveRestoreOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/mms/util/SaveRestoreOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/util/SaveRestoreOperation;


# direct methods
.method public constructor <init>(Lcom/samsung/mms/util/SaveRestoreOperation;)V
    .locals 0
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/samsung/mms/util/SaveRestoreOperation$MessageHandler;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    .line 251
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 252
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 255
    const/4 v1, 0x0

    .line 256
    .local v1, title:I
    const/4 v0, 0x0

    .line 257
    .local v0, message:I
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 272
    :goto_0
    iget-object v2, p0, Lcom/samsung/mms/util/SaveRestoreOperation$MessageHandler;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    #calls: Lcom/samsung/mms/util/SaveRestoreOperation;->showErrorSuccessRestoreDialog(II)V
    invoke-static {v2, v1, v0}, Lcom/samsung/mms/util/SaveRestoreOperation;->access$1100(Lcom/samsung/mms/util/SaveRestoreOperation;II)V

    .line 273
    return-void

    .line 259
    :pswitch_0
    const v1, 0x7f0a04f7

    .line 260
    const v0, 0x7f0a04f6

    .line 261
    goto :goto_0

    .line 263
    :pswitch_1
    const v1, 0x7f0a01f5

    .line 264
    const v0, 0x7f0a04f4

    .line 265
    goto :goto_0

    .line 267
    :pswitch_2
    const v1, 0x7f0a01f5

    .line 268
    const v0, 0x7f0a0504

    goto :goto_0

    .line 257
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
