.class Lcom/android/mms/MmsApp$1;
.super Ljava/lang/Object;
.source "MmsApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/MmsApp;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/MmsApp;


# direct methods
.method constructor <init>(Lcom/android/mms/MmsApp;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/mms/MmsApp$1;->this$0:Lcom/android/mms/MmsApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 162
    const-string v1, "Mms/MmsApp"

    const-string v2, " start initViewCache mms"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lcom/android/mms/MmsApp$1;->this$0:Lcom/android/mms/MmsApp;

    #calls: Lcom/android/mms/MmsApp;->initViewCache()V
    invoke-static {v1}, Lcom/android/mms/MmsApp;->access$000(Lcom/android/mms/MmsApp;)V

    .line 165
    invoke-static {}, Lcom/android/mms/MmsApp;->access$100()Lcom/android/mms/MmsApp;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/Synchronizer;->doProcessing(Landroid/content/Context;)V

    .line 169
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mms.transaction.SEND_MESSAGE"

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/mms/MmsApp;->access$200()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/mms/transaction/SmsReceiver;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 170
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/mms/MmsApp$1;->this$0:Lcom/android/mms/MmsApp;

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 173
    const-string v1, "Mms/MmsApp"

    const-string v2, "startService start"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-static {}, Lcom/android/mms/MmsApp;->access$200()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/android/mms/MmsApp;->access$200()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 175
    const-string v1, "Mms/MmsApp"

    const-string v2, "startService end"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-void
.end method
