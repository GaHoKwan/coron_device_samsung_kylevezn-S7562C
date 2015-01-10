.class Lcom/android/mms/ui/ConversationComposer$1;
.super Landroid/content/BroadcastReceiver;
.source "ConversationComposer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationComposer;->registerMultiWindowBroadcastReciver()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mConfigurationClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation
.end field

.field private mIntentClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/mms/ui/ConversationComposer;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationComposer;)V
    .locals 1
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/mms/ui/ConversationComposer$1;->this$0:Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 188
    const-class v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer$1;->mIntentClass:Ljava/lang/Class;

    .line 189
    const-class v0, Landroid/content/res/Configuration;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer$1;->mConfigurationClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 193
    const/4 v3, 0x0

    .line 194
    .local v3, EXTRA_ARRANGE_MODE:Ljava/lang/String;
    const/4 v2, -0x1

    .line 195
    .local v2, ARRANGE_UNDEFINED:I
    const/4 v1, -0x1

    .line 198
    .local v1, ARRANGE_SPLITED:I
    :try_start_0
    iget-object v7, p0, Lcom/android/mms/ui/ConversationComposer$1;->mIntentClass:Ljava/lang/Class;

    const-string v8, "EXTRA_ARRANGE_MODE"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 199
    .local v5, field:Ljava/lang/reflect/Field;
    invoke-virtual {v5, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 201
    iget-object v7, p0, Lcom/android/mms/ui/ConversationComposer$1;->mConfigurationClass:Ljava/lang/Class;

    const-string v8, "ARRANGE_UNDEFINED"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 202
    invoke-virtual {v5, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    .line 204
    iget-object v7, p0, Lcom/android/mms/ui/ConversationComposer$1;->mConfigurationClass:Ljava/lang/Class;

    const-string v8, "ARRANGE_SPLITED"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 205
    invoke-virtual {v5, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 207
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.sec.android.action.NOTIFY_SPLIT_WINDOWS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 208
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 210
    .local v6, mode:I
    if-ne v6, v1, :cond_0

    .line 217
    :cond_0
    iget-object v7, p0, Lcom/android/mms/ui/ConversationComposer$1;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #getter for: Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;
    invoke-static {v7}, Lcom/android/mms/ui/ConversationComposer;->access$000(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/ConversationListFragment;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 218
    iget-object v7, p0, Lcom/android/mms/ui/ConversationComposer$1;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #getter for: Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;
    invoke-static {v7}, Lcom/android/mms/ui/ConversationComposer;->access$000(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/ConversationListFragment;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/ui/ConversationListFragment;->updateEmptyScreenForMultiWindow()V

    .line 221
    :cond_1
    iget-object v7, p0, Lcom/android/mms/ui/ConversationComposer$1;->this$0:Lcom/android/mms/ui/ConversationComposer;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/mms/ui/ConversationComposer;->refreshSplitManager(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 230
    .end local v5           #field:Ljava/lang/reflect/Field;
    .end local v6           #mode:I
    :cond_2
    :goto_0
    return-void

    .line 223
    :catch_0
    move-exception v4

    .line 224
    .local v4, e:Ljava/lang/NoSuchFieldException;
    const-string v7, "Mms/ConversationComposer"

    const-string v8, "registerMultiWindowBroadcastReciver : NoSuchFieldException"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 225
    .end local v4           #e:Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v4

    .line 226
    .local v4, e:Ljava/lang/IllegalArgumentException;
    const-string v7, "Mms/ConversationComposer"

    const-string v8, "registerMultiWindowBroadcastReciver : IllegalArgumentException"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 227
    .end local v4           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v4

    .line 228
    .local v4, e:Ljava/lang/IllegalAccessException;
    const-string v7, "Mms/ConversationComposer"

    const-string v8, "registerMultiWindowBroadcastReciver : IllegalAccessException"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
