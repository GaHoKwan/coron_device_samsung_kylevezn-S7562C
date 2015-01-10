.class Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$3;
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
    .line 339
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 342
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->onCancel()V

    .line 343
    return-void
.end method
