.class Lcom/sec/android/app/contacts/activities/ContactHistoryActivity$1;
.super Ljava/lang/Object;
.source "ContactHistoryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->updateDeleteMode(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 302
    return-void
.end method
