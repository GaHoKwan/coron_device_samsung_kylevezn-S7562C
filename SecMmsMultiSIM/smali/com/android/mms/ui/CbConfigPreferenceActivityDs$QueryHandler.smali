.class Lcom/android/mms/ui/CbConfigPreferenceActivityDs$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "CbConfigPreferenceActivityDs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/CbConfigPreferenceActivityDs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/CbConfigPreferenceActivityDs;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/CbConfigPreferenceActivityDs;Landroid/content/ContentResolver;Lcom/android/mms/ui/CbConfigPreferenceActivityDs;)V
    .locals 0
    .parameter
    .parameter "contentResolver"
    .parameter "parent"

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivityDs$QueryHandler;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivityDs;

    .line 250
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 251
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 1
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivityDs$QueryHandler;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivityDs;

    #setter for: Lcom/android/mms/ui/CbConfigPreferenceActivityDs;->mCursor:Landroid/database/Cursor;
    invoke-static {v0, p3}, Lcom/android/mms/ui/CbConfigPreferenceActivityDs;->access$002(Lcom/android/mms/ui/CbConfigPreferenceActivityDs;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 257
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivityDs$QueryHandler;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivityDs;

    #getter for: Lcom/android/mms/ui/CbConfigPreferenceActivityDs;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/mms/ui/CbConfigPreferenceActivityDs;->access$000(Lcom/android/mms/ui/CbConfigPreferenceActivityDs;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivityDs$QueryHandler;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivityDs;

    #getter for: Lcom/android/mms/ui/CbConfigPreferenceActivityDs;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/mms/ui/CbConfigPreferenceActivityDs;->access$000(Lcom/android/mms/ui/CbConfigPreferenceActivityDs;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivityDs$QueryHandler;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivityDs;

    #calls: Lcom/android/mms/ui/CbConfigPreferenceActivityDs;->addPreferencesForMyChannel()V
    invoke-static {v0}, Lcom/android/mms/ui/CbConfigPreferenceActivityDs;->access$100(Lcom/android/mms/ui/CbConfigPreferenceActivityDs;)V

    .line 262
    :cond_0
    return-void
.end method
