.class Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$4;
.super Ljava/lang/Object;
.source "InteractionPickerFavoritesFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->showMaxCountAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1167
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$4;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$4;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mShowMaxCountDialog:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->access$702(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;Z)Z

    .line 1172
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$4;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$4;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->access$800(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    #calls: Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setDoneButton(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->access$900(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;I)V

    .line 1173
    return-void
.end method
