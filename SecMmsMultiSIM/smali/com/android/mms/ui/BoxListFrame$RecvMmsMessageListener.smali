.class public Lcom/android/mms/ui/BoxListFrame$RecvMmsMessageListener;
.super Ljava/lang/Object;
.source "BoxListFrame.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/BoxListFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecvMmsMessageListener"
.end annotation


# instance fields
.field private final mRecvMmsUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/mms/ui/BoxListFrame;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/BoxListFrame;J)V
    .locals 1
    .parameter
    .parameter "msgId"

    .prologue
    .line 2225
    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame$RecvMmsMessageListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2226
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame$RecvMmsMessageListener;->mRecvMmsUri:Landroid/net/Uri;

    .line 2227
    return-void
.end method

.method public constructor <init>(Lcom/android/mms/ui/BoxListFrame;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter "uri"

    .prologue
    .line 2221
    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame$RecvMmsMessageListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2222
    iput-object p2, p0, Lcom/android/mms/ui/BoxListFrame$RecvMmsMessageListener;->mRecvMmsUri:Landroid/net/Uri;

    .line 2223
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 2239
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$RecvMmsMessageListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$2400(Lcom/android/mms/ui/BoxListFrame;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2240
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "uri"

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$RecvMmsMessageListener;->mRecvMmsUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2241
    const-string v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2242
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$RecvMmsMessageListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$2500(Lcom/android/mms/ui/BoxListFrame;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2245
    return-void
.end method
