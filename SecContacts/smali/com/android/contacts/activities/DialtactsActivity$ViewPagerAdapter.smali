.class public Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;
.super Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;
.source "DialtactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/DialtactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewPagerAdapter"
.end annotation


# instance fields
.field private mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

.field private mContactTileListFragment:Lcom/android/contacts/list/ContactTileListFragment;

.field private mContactsFragment:Lcom/sec/android/app/dialertab/dialpad/ContactsFragment;

.field private mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

.field final synthetic this$0:Lcom/android/contacts/activities/DialtactsActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/activities/DialtactsActivity;Landroid/app/FragmentManager;)V
    .locals 0
    .parameter
    .parameter "fm"

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    .line 275
    invoke-direct {p0, p2}, Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 276
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x4

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 4
    .parameter "position"

    .prologue
    .line 280
    packed-switch p1, :pswitch_data_0

    .line 303
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No fragment at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    if-nez v0, :cond_0

    .line 283
    new-instance v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-direct {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    .line 301
    :goto_0
    return-object v0

    .line 287
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    if-nez v0, :cond_1

    .line 288
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-direct {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    .line 289
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    new-instance v1, Lcom/android/contacts/activities/DialtactsActivity$LogsListActionListener;

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/contacts/activities/DialtactsActivity$LogsListActionListener;-><init>(Lcom/android/contacts/activities/DialtactsActivity;Lcom/android/contacts/activities/DialtactsActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->setLogsListActionListener(Lcom/sec/android/app/dialertab/calllog/OnLogsListActionListener;)V

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    goto :goto_0

    .line 293
    :pswitch_2
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;->mContactTileListFragment:Lcom/android/contacts/list/ContactTileListFragment;

    if-nez v0, :cond_2

    .line 294
    new-instance v0, Lcom/android/contacts/list/ContactTileListFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactTileListFragment;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;->mContactTileListFragment:Lcom/android/contacts/list/ContactTileListFragment;

    .line 296
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;->mContactTileListFragment:Lcom/android/contacts/list/ContactTileListFragment;

    goto :goto_0

    .line 298
    :pswitch_3
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;->mContactsFragment:Lcom/sec/android/app/dialertab/dialpad/ContactsFragment;

    if-nez v0, :cond_3

    .line 299
    new-instance v0, Lcom/sec/android/app/dialertab/dialpad/ContactsFragment;

    invoke-direct {v0}, Lcom/sec/android/app/dialertab/dialpad/ContactsFragment;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;->mContactsFragment:Lcom/sec/android/app/dialertab/dialpad/ContactsFragment;

    .line 301
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;->mContactsFragment:Lcom/sec/android/app/dialertab/dialpad/ContactsFragment;

    goto :goto_0

    .line 280
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
