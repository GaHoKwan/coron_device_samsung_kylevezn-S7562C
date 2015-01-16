.class Lcom/sec/android/allshare/IAppControlAPI$1;
.super Ljava/lang/Object;
.source "IAppControlAPI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/allshare/IAppControlAPI;->startControl(Lcom/sec/android/allshare/NetworkSocketInfo;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/allshare/IAppControlAPI;

.field final synthetic val$netinfo:Lcom/sec/android/allshare/NetworkSocketInfo;


# direct methods
.method constructor <init>(Lcom/sec/android/allshare/IAppControlAPI;Lcom/sec/android/allshare/NetworkSocketInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/sec/android/allshare/IAppControlAPI$1;->this$0:Lcom/sec/android/allshare/IAppControlAPI;

    iput-object p2, p0, Lcom/sec/android/allshare/IAppControlAPI$1;->val$netinfo:Lcom/sec/android/allshare/NetworkSocketInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sec/android/allshare/IAppControlAPI$1;->this$0:Lcom/sec/android/allshare/IAppControlAPI;

    iget-object v0, v0, Lcom/sec/android/allshare/IAppControlAPI;->mTvMsgSender:Lcom/sec/android/allshare/TVMessageSender;

    iget-object v1, p0, Lcom/sec/android/allshare/IAppControlAPI$1;->val$netinfo:Lcom/sec/android/allshare/NetworkSocketInfo;

    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/TVMessageSender;->initSender(Lcom/sec/android/allshare/NetworkSocketInfo;)V

    .line 162
    iget-object v0, p0, Lcom/sec/android/allshare/IAppControlAPI$1;->this$0:Lcom/sec/android/allshare/IAppControlAPI;

    invoke-virtual {v0}, Lcom/sec/android/allshare/IAppControlAPI;->sendMouseCreate()V

    .line 163
    return-void
.end method
