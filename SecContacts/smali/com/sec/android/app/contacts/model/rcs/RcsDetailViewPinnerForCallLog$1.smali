.class Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog$1;
.super Ljava/lang/Object;
.source "RcsDetailViewPinnerForCallLog.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog$1;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog$1;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;

    invoke-static {p2}, Lcom/samsung/rcs/urigenerator/IUriGeneratorService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/rcs/urigenerator/IUriGeneratorService;

    move-result-object v1

    #setter for: Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mUriGeneratorService:Lcom/samsung/rcs/urigenerator/IUriGeneratorService;
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->access$002(Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;Lcom/samsung/rcs/urigenerator/IUriGeneratorService;)Lcom/samsung/rcs/urigenerator/IUriGeneratorService;

    .line 80
    sget-object v0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->TAG:Ljava/lang/String;

    const-string v1, "Connected to uriGeneratorService"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog$1;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mUriGeneratorService:Lcom/samsung/rcs/urigenerator/IUriGeneratorService;
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->access$002(Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;Lcom/samsung/rcs/urigenerator/IUriGeneratorService;)Lcom/samsung/rcs/urigenerator/IUriGeneratorService;

    .line 87
    sget-object v0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->TAG:Ljava/lang/String;

    const-string v1, "Disconnected from uriGeneratorService"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void
.end method
