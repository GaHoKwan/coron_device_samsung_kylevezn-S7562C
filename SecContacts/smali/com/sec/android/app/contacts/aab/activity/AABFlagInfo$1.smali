.class Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo$1;
.super Ljava/lang/Thread;
.source "AABFlagInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;->resetAABEnabledFlag()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo$1;->this$0:Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 165
    const-string v0, "AABFlagInfo"

    const-string v1, "resetAABEnabledFlag"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo$1;->this$0:Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;

    sget-object v1, Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;->ctx:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;->resetAllFlags(Landroid/content/Context;)Z

    .line 167
    return-void
.end method
