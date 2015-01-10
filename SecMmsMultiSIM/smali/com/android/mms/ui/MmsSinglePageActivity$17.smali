.class Lcom/android/mms/ui/MmsSinglePageActivity$17;
.super Ljava/lang/Object;
.source "MmsSinglePageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MmsSinglePageActivity;->exitMmsSinglePageActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsSinglePageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 3096
    iput-object p1, p0, Lcom/android/mms/ui/MmsSinglePageActivity$17;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3098
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity$17;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 3099
    return-void
.end method
