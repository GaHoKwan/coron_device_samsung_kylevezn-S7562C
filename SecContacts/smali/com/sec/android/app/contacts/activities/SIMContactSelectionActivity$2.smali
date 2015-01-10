.class Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$2;
.super Ljava/lang/Object;
.source "SIMContactSelectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->configureComponenets()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$2;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 332
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$2;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$000(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v0

    const/16 v1, 0x15e

    if-ne v0, v1, :cond_0

    .line 333
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$2;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->onDeleteResult()V

    .line 337
    :goto_0
    return-void

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$2;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->onCopyResult()V

    goto :goto_0
.end method
