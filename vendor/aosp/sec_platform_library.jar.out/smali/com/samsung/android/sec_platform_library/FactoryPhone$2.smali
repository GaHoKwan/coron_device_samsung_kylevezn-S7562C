.class Lcom/samsung/android/sec_platform_library/FactoryPhone$2;
.super Landroid/os/Handler;
.source "FactoryPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sec_platform_library/FactoryPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;


# direct methods
.method constructor <init>(Lcom/samsung/android/sec_platform_library/FactoryPhone;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone$2;->this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone$2;->this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    #getter for: Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->access$000(Lcom/samsung/android/sec_platform_library/FactoryPhone;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone$2;->this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    #getter for: Lcom/samsung/android/sec_platform_library/FactoryPhone;->HOST_NAME:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->access$100(Lcom/samsung/android/sec_platform_library/FactoryPhone;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " response handler does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 53
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone$2;->this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    #getter for: Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->access$000(Lcom/samsung/android/sec_platform_library/FactoryPhone;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone$2;->this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    #getter for: Lcom/samsung/android/sec_platform_library/FactoryPhone;->HOST_NAME:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->access$100(Lcom/samsung/android/sec_platform_library/FactoryPhone;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dummy handler : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :goto_0
    return-void

    .line 49
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone$2;->this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    #getter for: Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->access$000(Lcom/samsung/android/sec_platform_library/FactoryPhone;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone$2;->this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    #getter for: Lcom/samsung/android/sec_platform_library/FactoryPhone;->HOST_NAME:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->access$100(Lcom/samsung/android/sec_platform_library/FactoryPhone;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dummy handler : BASE_ID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
