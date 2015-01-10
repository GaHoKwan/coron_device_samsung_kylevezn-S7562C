.class public Lcom/android/mms/ui/RecipientListActivity;
.super Landroid/app/Activity;
.source "RecipientListActivity.java"

# interfaces
.implements Lcom/android/mms/data/Contact$UpdateListener;


# instance fields
.field private list:Landroid/widget/ListView;

.field public mActionbarNormalListLayout:Landroid/widget/LinearLayout;

.field private mActionbarNormalListSeparator:Landroid/widget/ImageView;

.field private mActionbarNormalListTemplateButton:Landroid/widget/TextView;

.field public mActionbarNormalListTitle:Landroid/widget/TextView;

.field private mActionbarNormalListTitleLayout:Landroid/widget/RelativeLayout;

.field private mActionbarNormalListTitleNumber:Landroid/widget/TextView;

.field private mIntent:Landroid/content/Intent;

.field private mListAdapter:Lcom/android/mms/ui/RecipientListAdapter;

.field private mTestRecipients:[Ljava/lang/String;

.field recipientListItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/RecipientListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->recipientListItems:Ljava/util/ArrayList;

    .line 37
    iput-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    .line 38
    iput-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    .line 39
    iput-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListTitleLayout:Landroid/widget/RelativeLayout;

    .line 40
    iput-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    .line 46
    iput-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListTemplateButton:Landroid/widget/TextView;

    .line 47
    iput-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListSeparator:Landroid/widget/ImageView;

    .line 54
    iput-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mTestRecipients:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/RecipientListActivity;)Lcom/android/mms/ui/RecipientListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mListAdapter:Lcom/android/mms/ui/RecipientListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/RecipientListActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->list:Landroid/widget/ListView;

    return-object v0
.end method

.method private getRecipients()Lcom/android/mms/data/ContactList;
    .locals 4

    .prologue
    .line 139
    new-instance v0, Lcom/android/mms/data/ContactList;

    invoke-direct {v0}, Lcom/android/mms/data/ContactList;-><init>()V

    .line 140
    .local v0, contactList:Lcom/android/mms/data/ContactList;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/RecipientListActivity;->mTestRecipients:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 141
    iget-object v2, p0, Lcom/android/mms/ui/RecipientListActivity;->mTestRecipients:[Ljava/lang/String;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    :cond_0
    return-object v0
.end method

.method private setupActionBar()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 148
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 149
    .local v0, bar:Landroid/app/ActionBar;
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030003

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    .line 150
    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 151
    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0e0007

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    .line 153
    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 168
    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    const v2, 0x7f0a027d

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setClickable(Z)V

    .line 174
    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0e0006

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListTitleLayout:Landroid/widget/RelativeLayout;

    .line 175
    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListTitleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 176
    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListTitleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/view/View;->setClickable(Z)V

    .line 177
    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0e0008

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    .line 178
    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 182
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 184
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 185
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 233
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 234
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v0, 0x7f03006b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 62
    invoke-direct {p0}, Lcom/android/mms/ui/RecipientListActivity;->setupActionBar()V

    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mIntent:Landroid/content/Intent;

    .line 65
    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "recipients"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mTestRecipients:[Ljava/lang/String;

    .line 67
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 190
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 191
    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mListAdapter:Lcom/android/mms/ui/RecipientListAdapter;

    if-eqz v0, :cond_0

    .line 192
    iput-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mListAdapter:Lcom/android/mms/ui/RecipientListAdapter;

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 195
    iput-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 199
    iput-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    .line 219
    :cond_2
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 223
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 228
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 225
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 226
    const/4 v0, 0x1

    goto :goto_0

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 72
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 73
    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 74
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 80
    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 81
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 82
    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mListAdapter:Lcom/android/mms/ui/RecipientListAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 83
    return-void
.end method

.method protected onStart()V
    .locals 5

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/mms/ui/RecipientListActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    .line 102
    .local v1, recipients:Lcom/android/mms/data/ContactList;
    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->reloadContactList()V

    .line 104
    iget-object v2, p0, Lcom/android/mms/ui/RecipientListActivity;->recipientListItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 106
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/RecipientListActivity;->mTestRecipients:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 107
    iget-object v2, p0, Lcom/android/mms/ui/RecipientListActivity;->recipientListItems:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/mms/ui/RecipientListItem;

    iget-object v4, p0, Lcom/android/mms/ui/RecipientListActivity;->mTestRecipients:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-direct {v3, p0, v4}, Lcom/android/mms/ui/RecipientListItem;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_0
    new-instance v2, Lcom/android/mms/ui/RecipientListAdapter;

    const v3, 0x7f03006c

    iget-object v4, p0, Lcom/android/mms/ui/RecipientListActivity;->recipientListItems:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/mms/ui/RecipientListAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v2, p0, Lcom/android/mms/ui/RecipientListActivity;->mListAdapter:Lcom/android/mms/ui/RecipientListAdapter;

    .line 111
    const v2, 0x7f0e01bb

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/mms/ui/RecipientListActivity;->list:Landroid/widget/ListView;

    .line 112
    iget-object v2, p0, Lcom/android/mms/ui/RecipientListActivity;->list:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/mms/ui/RecipientListActivity;->mListAdapter:Lcom/android/mms/ui/RecipientListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 117
    iget-object v2, p0, Lcom/android/mms/ui/RecipientListActivity;->list:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 118
    iget-object v2, p0, Lcom/android/mms/ui/RecipientListActivity;->list:Landroid/widget/ListView;

    new-instance v3, Lcom/android/mms/ui/RecipientListActivity$2;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/RecipientListActivity$2;-><init>(Lcom/android/mms/ui/RecipientListActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 134
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 135
    return-void
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 2
    .parameter "updated"

    .prologue
    .line 87
    const-string v0, "ContactResult"

    const-string v1, "Contact onUpdate Called"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v0, Lcom/android/mms/ui/RecipientListActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/RecipientListActivity$1;-><init>(Lcom/android/mms/ui/RecipientListActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 95
    return-void
.end method
