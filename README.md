# GitHub Action: Send SMS notification with Free Mobile

This action sends a SMS to Free Mobile customer using the included free API.

## Inputs

### `freemobile_id`

**Required**. Free Mobile user ID. Must be in form of `freemobile_id: ${{ secrets.freemobile_token }}`.

### `freemobile_token`

**Required**. Free Mobile SMS token. Must be in form of `freemobile_token: ${{ secrets.freemobile_token }}`.

### `message`

**Required**. SMS message to be sent. Must be in form of `message: A wild SMS just appeared.`.

## Example usage

```yaml
name: Test
on: push
jobs:
  test:
    runs-on: ubuntu-latest

    steps:
      - name: Test
        run: npm run test

      - name: Notify
        if: always()
        uses: aslafy-z/freemobile-sms-action@master
        with:
          freemobile_id: ${{ secrets.freemobile_id }}
          freemobile_token: ${{ secrets.freemobile_token }}
          message: |
            ${{ github.repository }}@${{ github.ref }} result: ${{ job.status }}.
```
