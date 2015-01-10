.class Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1$1;
.super Ljava/lang/Object;
.source "SpamMessageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1848
    iput-object p1, p0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1$1;->this$2:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1851
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1$1;->this$2:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;

    iget-object v0, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v0, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1, v2}, Lcom/android/mms/ui/SpamMessageManager;->setListModeLayout(IZZ)V

    .line 1852
    return-void
.end method
