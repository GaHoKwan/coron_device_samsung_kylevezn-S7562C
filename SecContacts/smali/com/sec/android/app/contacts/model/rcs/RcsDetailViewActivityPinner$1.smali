.class Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner$1;
.super Ljava/lang/Object;
.source "RcsDetailViewActivityPinner.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner$1;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;

    invoke-static {p2}, Lcom/samsung/rcs/urigenerator/IUriGeneratorService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/rcs/urigenerator/IUriGeneratorService;

    move-result-object v1

    #setter for: Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mUriGeneratorService:Lcom/samsung/rcs/urigenerator/IUriGeneratorService;
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->access$002(Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;Lcom/samsung/rcs/urigenerator/IUriGeneratorService;)Lcom/samsung/rcs/urigenerator/IUriGeneratorService;

    .line 77
    invoke-static {}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Connected to uriGeneratorService"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner$1;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mUriGeneratorService:Lcom/samsung/rcs/urigenerator/IUriGeneratorService;
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->access$002(Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;Lcom/samsung/rcs/urigenerator/IUriGeneratorService;)Lcom/samsung/rcs/urigenerator/IUriGeneratorService;

    .line 84
    invoke-static {}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Disconnected from uriGeneratorService"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void
.end method
