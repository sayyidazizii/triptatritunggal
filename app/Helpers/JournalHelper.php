<?php
namespace App\Helpers;

use App\Models\AcctJournalVoucher;
use App\Models\AcctJournalVoucherItem;
use App\Models\AcctAccount;
use Illuminate\Support\Facades\Auth;

class JournalHelper
{
    public static function createJournal($data_journal, $journal_items)
    {
        try {
            // Create the journal voucher
            $journal = AcctJournalVoucher::create([
                'branch_id'                     => $data_journal['branch_id'],
                'journal_voucher_period'        => $data_journal['journal_voucher_period'],
                'journal_voucher_date'          => $data_journal['journal_voucher_date'],
                'journal_voucher_title'         => $data_journal['journal_voucher_title'],
                'journal_voucher_description'   => $data_journal['journal_voucher_description'],
                'transaction_module_id'         => $data_journal['transaction_module_id'],
                'transaction_module_code'       => $data_journal['transaction_module_code'],
                'transaction_journal_id'        => $data_journal['transaction_journal_id'],
                'transaction_journal_no'        => $data_journal['transaction_journal_no'],
                'created_id'                    => Auth::id(),
            ]);

            // Create journal voucher items
            foreach ($journal_items as $item) {
                $account = AcctAccount::where('account_id', $item['account_id'])
                    ->where('data_state', 0)
                    ->first();

                if (!$account) {
                    throw new \Exception('Invalid account ID: ' . $item['account_id']);
                }

                AcctJournalVoucherItem::create([
                    'journal_voucher_id'           => $journal->journal_voucher_id,
                    'account_id'                   => $item['account_id'],
                    'journal_voucher_description'  => $item['description'],
                    'journal_voucher_amount'       => abs($item['amount']),
                    'journal_voucher_debit_amount' => $item['debit'] ? abs($item['amount']) : 0,
                    'journal_voucher_credit_amount'=> !$item['debit'] ? abs($item['amount']) : 0,
                    'account_id_default_status'    => $account->account_default_status,
                    'account_id_status'            => $item['account_status'] ?? $account->account_default_status,
                ]);
            }

            return $journal;
        } catch (\Exception $e) {
            throw new \Exception('Error creating journal: ' . $e->getMessage());
        }
    }
}
