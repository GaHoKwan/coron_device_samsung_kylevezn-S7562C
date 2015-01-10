.class Lcom/android/mms/ui/MessageUtils$7$1;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageUtils$7;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageUtils$7;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageUtils$7;)V
    .locals 0
    .parameter

    .prologue
    .line 2186
    iput-object p1, p0, Lcom/android/mms/ui/MessageUtils$7$1;->this$0:Lcom/android/mms/ui/MessageUtils$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x1

    .line 2188
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsReadReportPdu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2189
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$7$1;->this$0:Lcom/android/mms/ui/MessageUtils$7;

    iget-object v0, v0, Lcom/android/mms/ui/MessageUtils$7;->val$map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 2190
    .local v7, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v1, v0, v5

    .line 2191
    .local v1, sl_To:Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v3, v0, v4

    .line 2192
    .local v3, sl_IMSI:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$7$1;->this$0:Lcom/android/mms/ui/MessageUtils$7;

    iget-object v0, v0, Lcom/android/mms/ui/MessageUtils$7;->val$mapSimSlot:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2193
    .local v2, vl_SimSlot:I
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$7$1;->this$0:Lcom/android/mms/ui/MessageUtils$7;

    iget-object v0, v0, Lcom/android/mms/ui/MessageUtils$7;->val$context:Landroid/content/Context;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/mms/ui/MessageUtils$7$1;->this$0:Lcom/android/mms/ui/MessageUtils$7;

    iget v6, v6, Lcom/android/mms/ui/MessageUtils$7;->val$status:I

    invoke-static/range {v0 .. v6}, Lcom/android/mms/transaction/MmsMessageSender;->sendReadRec(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;I)V

    goto :goto_0

    .line 2196
    .end local v1           #sl_To:Ljava/lang/String;
    .end local v2           #vl_SimSlot:I
    .end local v3           #sl_IMSI:Ljava/lang/String;
    .end local v7           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    .end local v8           #i$:Ljava/util/Iterator;
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$7$1;->this$0:Lcom/android/mms/ui/MessageUtils$7;

    iget-object v0, v0, Lcom/android/mms/ui/MessageUtils$7;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/ui/MessageUtils$7$1;->this$0:Lcom/android/mms/ui/MessageUtils$7;

    iget-object v4, v4, Lcom/android/mms/ui/MessageUtils$7;->val$readReportDataMap:Ljava/util/Map;

    iget-object v5, p0, Lcom/android/mms/ui/MessageUtils$7$1;->this$0:Lcom/android/mms/ui/MessageUtils$7;

    iget v5, v5, Lcom/android/mms/ui/MessageUtils$7;->val$status:I

    invoke-static {v0, v4, v5}, Lcom/android/mms/transaction/MmsMessageSender;->sendReadRec(Landroid/content/Context;Ljava/util/Map;I)V

    .line 2199
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$7$1;->this$0:Lcom/android/mms/ui/MessageUtils$7;

    iget-object v0, v0, Lcom/android/mms/ui/MessageUtils$7;->val$callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$7$1;->this$0:Lcom/android/mms/ui/MessageUtils$7;

    iget-object v0, v0, Lcom/android/mms/ui/MessageUtils$7;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2200
    :cond_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2201
    return-void
.end method
