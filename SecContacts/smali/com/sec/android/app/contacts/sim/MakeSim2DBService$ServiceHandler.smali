.class final Lcom/sec/android/app/contacts/sim/MakeSim2DBService$ServiceHandler;
.super Landroid/os/Handler;
.source "MakeSim2DBService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/sim/MakeSim2DBService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/sim/MakeSim2DBService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/sim/MakeSim2DBService;)V
    .locals 0
    .parameter

    .prologue
    .line 1345
    iput-object p1, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService$ServiceHandler;->this$0:Lcom/sec/android/app/contacts/sim/MakeSim2DBService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1348
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1374
    :goto_0
    return-void

    .line 1350
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService$ServiceHandler;->this$0:Lcom/sec/android/app/contacts/sim/MakeSim2DBService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->doInitAction(II)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->access$000(Lcom/sec/android/app/contacts/sim/MakeSim2DBService;II)V

    goto :goto_0

    .line 1355
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService$ServiceHandler;->this$0:Lcom/sec/android/app/contacts/sim/MakeSim2DBService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->doQueryAction(II)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->access$100(Lcom/sec/android/app/contacts/sim/MakeSim2DBService;II)V

    goto :goto_0

    .line 1360
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService$ServiceHandler;->this$0:Lcom/sec/android/app/contacts/sim/MakeSim2DBService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->doInitAction(II)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->access$000(Lcom/sec/android/app/contacts/sim/MakeSim2DBService;II)V

    goto :goto_0

    .line 1365
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService$ServiceHandler;->this$0:Lcom/sec/android/app/contacts/sim/MakeSim2DBService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->doAirPlaneAction(II)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->access$200(Lcom/sec/android/app/contacts/sim/MakeSim2DBService;II)V

    goto :goto_0

    .line 1370
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService$ServiceHandler;->this$0:Lcom/sec/android/app/contacts/sim/MakeSim2DBService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->doCheckAdnAttribute(II)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->access$300(Lcom/sec/android/app/contacts/sim/MakeSim2DBService;II)V

    goto :goto_0

    .line 1348
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
