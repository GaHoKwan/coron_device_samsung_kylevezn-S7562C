.class Lcom/android/mms/data/Contact$ContactsCache$1;
.super Ljava/lang/Object;
.source "Contact.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/data/Contact$ContactsCache;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/data/Contact$ContactsCache;

.field final synthetic val$c:Lcom/android/mms/data/Contact;


# direct methods
.method constructor <init>(Lcom/android/mms/data/Contact$ContactsCache;Lcom/android/mms/data/Contact;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 911
    iput-object p1, p0, Lcom/android/mms/data/Contact$ContactsCache$1;->this$0:Lcom/android/mms/data/Contact$ContactsCache;

    iput-object p2, p0, Lcom/android/mms/data/Contact$ContactsCache$1;->val$c:Lcom/android/mms/data/Contact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 915
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/data/Contact$ContactsCache$1;->this$0:Lcom/android/mms/data/Contact$ContactsCache;

    iget-object v2, p0, Lcom/android/mms/data/Contact$ContactsCache$1;->val$c:Lcom/android/mms/data/Contact;

    const/4 v3, 0x0

    #calls: Lcom/android/mms/data/Contact$ContactsCache;->updateContact(Lcom/android/mms/data/Contact;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/mms/data/Contact$ContactsCache;->access$500(Lcom/android/mms/data/Contact$ContactsCache;Lcom/android/mms/data/Contact;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 921
    :goto_0
    return-void

    .line 917
    :catch_0
    move-exception v0

    .line 919
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "Mms/ContactsCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
