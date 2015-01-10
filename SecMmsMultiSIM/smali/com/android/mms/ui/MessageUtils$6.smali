.class final Lcom/android/mms/ui/MessageUtils$6;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageUtils;->handleReadReport(Landroid/content/Context;JILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Ljava/lang/Runnable;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$map:Ljava/util/Map;

.field final synthetic val$readReportDataMap:Ljava/util/Map;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Ljava/util/Map;Landroid/content/Context;ILjava/util/Map;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2165
    iput-object p1, p0, Lcom/android/mms/ui/MessageUtils$6;->val$map:Ljava/util/Map;

    iput-object p2, p0, Lcom/android/mms/ui/MessageUtils$6;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/android/mms/ui/MessageUtils$6;->val$status:I

    iput-object p4, p0, Lcom/android/mms/ui/MessageUtils$6;->val$readReportDataMap:Ljava/util/Map;

    iput-object p5, p0, Lcom/android/mms/ui/MessageUtils$6;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2167
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsReadReportPdu()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2168
    iget-object v3, p0, Lcom/android/mms/ui/MessageUtils$6;->val$map:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2169
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v2, v3, v4

    .line 2170
    .local v2, sl_To:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/mms/ui/MessageUtils$6;->val$context:Landroid/content/Context;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget v5, p0, Lcom/android/mms/ui/MessageUtils$6;->val$status:I

    invoke-static {v4, v2, v3, v5}, Lcom/android/mms/transaction/MmsMessageSender;->sendReadRec(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 2173
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #sl_To:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/MessageUtils$6;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/ui/MessageUtils$6;->val$readReportDataMap:Ljava/util/Map;

    iget v5, p0, Lcom/android/mms/ui/MessageUtils$6;->val$status:I

    invoke-static {v3, v4, v5}, Lcom/android/mms/transaction/MmsMessageSender;->sendReadRec(Landroid/content/Context;Ljava/util/Map;I)V

    .line 2176
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/MessageUtils$6;->val$callback:Ljava/lang/Runnable;

    if-eqz v3, :cond_2

    .line 2177
    iget-object v3, p0, Lcom/android/mms/ui/MessageUtils$6;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 2179
    :cond_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2180
    return-void
.end method
