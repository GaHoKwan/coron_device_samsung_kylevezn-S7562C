.class Lcom/sec/android/app/contacts/util/ImsLowSignalHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "ImsLowSignalHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 64
    .line 69
    :try_start_0
    const-string v0, "com.movial.ipphone.IPUtils"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "IMS_REGISTRATION"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :try_start_1
    const-string v1, "com.movial.ipphone.IPUtils"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "IMS_REG_STATUS"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 71
    :try_start_2
    const-string v2, "com.movial.ipphone.IPUtils"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "IMS_LOWSIGNAL"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 72
    :try_start_3
    const-string v3, "com.movial.ipphone.IPUtils"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v5, "IMS_LOWSIGNAL_STATUS"

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const-class v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 77
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 78
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalHelper$1;->this$0:Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    #setter for: Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;->mLowSignal:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;->access$102(Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;Z)Z

    .line 84
    :cond_0
    :goto_1
    return-void

    .line 73
    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v2, v4

    move-object v1, v4

    move-object v0, v4

    .line 74
    :goto_2
    invoke-static {}, Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;->access$000()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalHelper$1;->this$0:Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;

    invoke-virtual {p2, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    #setter for: Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;->mImsOn:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;->access$202(Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;Z)Z

    .line 82
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalHelper$1;->this$0:Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;

    #calls: Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;->notifyLowSignalRegistraints()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;->access$300(Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;)V

    goto :goto_1

    .line 73
    :catch_1
    move-exception v1

    move-object v3, v1

    move-object v2, v4

    move-object v1, v4

    goto :goto_2

    :catch_2
    move-exception v2

    move-object v3, v2

    move-object v2, v4

    goto :goto_2

    :catch_3
    move-exception v3

    goto :goto_2
.end method
