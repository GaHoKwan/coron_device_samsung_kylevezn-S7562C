.class final Lcom/sec/android/app/contacts/sim/MakeSimDBService$ServiceHandler;
.super Landroid/os/Handler;
.source "MakeSimDBService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/sim/MakeSimDBService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/sim/MakeSimDBService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/sim/MakeSimDBService;)V
    .locals 0
    .parameter

    .prologue
    .line 1381
    iput-object p1, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService$ServiceHandler;->this$0:Lcom/sec/android/app/contacts/sim/MakeSimDBService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 1384
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1418
    :goto_0
    return-void

    .line 1386
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService$ServiceHandler;->this$0:Lcom/sec/android/app/contacts/sim/MakeSimDBService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doInitAction(II)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->access$000(Lcom/sec/android/app/contacts/sim/MakeSimDBService;II)V

    goto :goto_0

    .line 1391
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService$ServiceHandler;->this$0:Lcom/sec/android/app/contacts/sim/MakeSimDBService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doQueryAction(II)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->access$100(Lcom/sec/android/app/contacts/sim/MakeSimDBService;II)V

    goto :goto_0

    .line 1396
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService$ServiceHandler;->this$0:Lcom/sec/android/app/contacts/sim/MakeSimDBService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doInitAction(II)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->access$000(Lcom/sec/android/app/contacts/sim/MakeSimDBService;II)V

    goto :goto_0

    .line 1401
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService$ServiceHandler;->this$0:Lcom/sec/android/app/contacts/sim/MakeSimDBService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doAirPlaneAction(II)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->access$200(Lcom/sec/android/app/contacts/sim/MakeSimDBService;II)V

    goto :goto_0

    .line 1406
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService$ServiceHandler;->this$0:Lcom/sec/android/app/contacts/sim/MakeSimDBService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doCheckAdnAttribute(II)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->access$300(Lcom/sec/android/app/contacts/sim/MakeSimDBService;II)V

    goto :goto_0

    .line 1410
    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService$ServiceHandler;->this$0:Lcom/sec/android/app/contacts/sim/MakeSimDBService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    const/4 v3, 0x1

    #calls: Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doBtSapAction(IIZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->access$400(Lcom/sec/android/app/contacts/sim/MakeSimDBService;IIZ)V

    goto :goto_0

    .line 1414
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService$ServiceHandler;->this$0:Lcom/sec/android/app/contacts/sim/MakeSimDBService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    const/4 v3, 0x0

    #calls: Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doBtSapAction(IIZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->access$400(Lcom/sec/android/app/contacts/sim/MakeSimDBService;IIZ)V

    goto :goto_0

    .line 1384
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
